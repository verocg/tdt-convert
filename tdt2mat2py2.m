function [output] = tdt2mat2py2(tank, rat, session, sigs, ttls, savefolder)

% clear all; close all 
% rat = 'thph2.2';
% session = 's1';
% tank = 'R:\DA_and_Reward\kp259\THPH2\Tanks\Kate-170810-072909';
% blueName = 'Dv1B'
% uvName = 'Dv2B'
% licksName = 'LiA_'
% savefolder = 'R:\DA_and_Reward\kp259\THPH2\TestSave\'

%% Extracts photometry data and fits signal FROM MULTIPLE BOXES (if there are multiple)
% Reads in TDT data into structured array using TDT function
fileinfo = strcat({'Rat '},rat,{': Session '}, session);
% data = TDTbin2mat(tank);
% 
% %% Puts info into output file
% output.info = data.info  
% 
% % Assigns processed data to new variables for easier referencing
% output.blue = data.streams.(blueName).data';
% output.uv = data.streams.(uvName).data';
% output.fs = data.streams.(blueName).fs;
%     
% %% Gets TTLs
% % This short code ensures that illeagal characters, such as underscores,
% % aren't included
% 
% output.tick = data.epocs.Tick
% output.licks = data.epocs.(licksName)
% 
% %% Save file with appropriate name
% 
% savefilename = strcat(savefolder,rat,session,'.mat');
% save(savefilename, 'output');