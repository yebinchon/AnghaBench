; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"----- Client Initialization -----\0A\00", align 1
@com_fullyInitialized = common dso_local global i32 0, align 4
@CA_DISCONNECTED = common dso_local global i32 0, align 4
@clc = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@qfalse = common dso_local global i32 0, align 4
@cl_oldGameSet = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"cl_noprint\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@cl_noprint = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"cl_timeout\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@cl_timeout = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"cl_timeNudge\00", align 1
@CVAR_TEMP = common dso_local global i32 0, align 4
@cl_timeNudge = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"cl_shownet\00", align 1
@cl_shownet = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"cl_showSend\00", align 1
@cl_showSend = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"cl_showTimeDelta\00", align 1
@cl_showTimeDelta = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"cl_freezeDemo\00", align 1
@cl_freezeDemo = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"rconPassword\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rcon_client_password = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"activeAction\00", align 1
@cl_activeAction = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"timedemo\00", align 1
@cl_timedemo = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"cl_timedemoLog\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@cl_timedemoLog = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [18 x i8] c"cl_autoRecordDemo\00", align 1
@cl_autoRecordDemo = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c"cl_aviFrameRate\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@cl_aviFrameRate = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [17 x i8] c"cl_aviMotionJpeg\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@cl_aviMotionJpeg = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [16 x i8] c"cl_forceavidemo\00", align 1
@cl_forceavidemo = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [12 x i8] c"rconAddress\00", align 1
@rconAddress = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [12 x i8] c"cl_yawspeed\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"140\00", align 1
@cl_yawspeed = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [14 x i8] c"cl_pitchspeed\00", align 1
@cl_pitchspeed = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [17 x i8] c"cl_anglespeedkey\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@cl_anglespeedkey = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [14 x i8] c"cl_maxpackets\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"30\00", align 1
@cl_maxpackets = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [13 x i8] c"cl_packetdup\00", align 1
@cl_packetdup = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [7 x i8] c"cl_run\00", align 1
@cl_run = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [12 x i8] c"sensitivity\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@cl_sensitivity = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [14 x i8] c"cl_mouseAccel\00", align 1
@cl_mouseAccel = common dso_local global i8* null, align 8
@.str.34 = private unnamed_addr constant [12 x i8] c"cl_freelook\00", align 1
@cl_freelook = common dso_local global i8* null, align 8
@.str.35 = private unnamed_addr constant [19 x i8] c"cl_mouseAccelStyle\00", align 1
@cl_mouseAccelStyle = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [20 x i8] c"cl_mouseAccelOffset\00", align 1
@cl_mouseAccelOffset = common dso_local global %struct.TYPE_12__* null, align 8
@.str.37 = private unnamed_addr constant [17 x i8] c"cl_showmouserate\00", align 1
@cl_showMouseRate = common dso_local global i8* null, align 8
@.str.38 = private unnamed_addr constant [17 x i8] c"cl_allowDownload\00", align 1
@cl_allowDownload = common dso_local global i8* null, align 8
@.str.39 = private unnamed_addr constant [14 x i8] c"cl_conXOffset\00", align 1
@cl_conXOffset = common dso_local global i8* null, align 8
@.str.40 = private unnamed_addr constant [14 x i8] c"r_inGameVideo\00", align 1
@cl_inGameVideo = common dso_local global i8* null, align 8
@.str.41 = private unnamed_addr constant [26 x i8] c"cl_serverStatusResendTime\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"750\00", align 1
@cl_serverStatusResendTime = common dso_local global i8* null, align 8
@.str.43 = private unnamed_addr constant [14 x i8] c"cg_autoswitch\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"m_pitch\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"0.022\00", align 1
@m_pitch = common dso_local global i8* null, align 8
@.str.46 = private unnamed_addr constant [6 x i8] c"m_yaw\00", align 1
@m_yaw = common dso_local global i8* null, align 8
@.str.47 = private unnamed_addr constant [10 x i8] c"m_forward\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"0.25\00", align 1
@m_forward = common dso_local global i8* null, align 8
@.str.49 = private unnamed_addr constant [7 x i8] c"m_side\00", align 1
@m_side = common dso_local global i8* null, align 8
@.str.50 = private unnamed_addr constant [9 x i8] c"m_filter\00", align 1
@m_filter = common dso_local global i8* null, align 8
@.str.51 = private unnamed_addr constant [8 x i8] c"j_pitch\00", align 1
@j_pitch = common dso_local global i8* null, align 8
@.str.52 = private unnamed_addr constant [6 x i8] c"j_yaw\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"-0.022\00", align 1
@j_yaw = common dso_local global i8* null, align 8
@.str.54 = private unnamed_addr constant [10 x i8] c"j_forward\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"-0.25\00", align 1
@j_forward = common dso_local global i8* null, align 8
@.str.56 = private unnamed_addr constant [7 x i8] c"j_side\00", align 1
@j_side = common dso_local global i8* null, align 8
@.str.57 = private unnamed_addr constant [5 x i8] c"j_up\00", align 1
@j_up = common dso_local global i8* null, align 8
@.str.58 = private unnamed_addr constant [13 x i8] c"j_pitch_axis\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@j_pitch_axis = common dso_local global %struct.TYPE_12__* null, align 8
@.str.60 = private unnamed_addr constant [11 x i8] c"j_yaw_axis\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@j_yaw_axis = common dso_local global %struct.TYPE_12__* null, align 8
@.str.62 = private unnamed_addr constant [15 x i8] c"j_forward_axis\00", align 1
@j_forward_axis = common dso_local global %struct.TYPE_12__* null, align 8
@.str.63 = private unnamed_addr constant [12 x i8] c"j_side_axis\00", align 1
@j_side_axis = common dso_local global %struct.TYPE_12__* null, align 8
@.str.64 = private unnamed_addr constant [10 x i8] c"j_up_axis\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@j_up_axis = common dso_local global %struct.TYPE_12__* null, align 8
@MAX_JOYSTICK_AXIS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str.66 = private unnamed_addr constant [14 x i8] c"cl_motdString\00", align 1
@CVAR_ROM = common dso_local global i32 0, align 4
@cl_motdString = common dso_local global i8* null, align 8
@.str.67 = private unnamed_addr constant [11 x i8] c"cl_maxPing\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"800\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"cl_lanForcePackets\00", align 1
@cl_lanForcePackets = common dso_local global i8* null, align 8
@.str.70 = private unnamed_addr constant [18 x i8] c"cl_guidServerUniq\00", align 1
@cl_guidServerUniq = common dso_local global i8* null, align 8
@.str.71 = private unnamed_addr constant [15 x i8] c"cl_consoleKeys\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"~ ` 0x7e 0x60\00", align 1
@cl_consoleKeys = common dso_local global i8* null, align 8
@.str.73 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"UnnamedPlayer\00", align 1
@CVAR_USERINFO = common dso_local global i32 0, align 4
@.str.75 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"25000\00", align 1
@cl_rate = common dso_local global i8* null, align 8
@.str.77 = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"sarge\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"headmodel\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"team_model\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"james\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"team_headmodel\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"*james\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"g_redTeam\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"Stroggs\00", align 1
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@.str.88 = private unnamed_addr constant [11 x i8] c"g_blueTeam\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"Pagans\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"color1\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"color2\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"handicap\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"teamtask\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"sex\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"male\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"cl_anonymous\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"cg_predictItems\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"cg_viewsize\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"cg_stereoSeparation\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@CL_ForwardToServer_f = common dso_local global i32 0, align 4
@.str.103 = private unnamed_addr constant [14 x i8] c"configstrings\00", align 1
@CL_Configstrings_f = common dso_local global i32 0, align 4
@.str.104 = private unnamed_addr constant [11 x i8] c"clientinfo\00", align 1
@CL_Clientinfo_f = common dso_local global i32 0, align 4
@.str.105 = private unnamed_addr constant [12 x i8] c"snd_restart\00", align 1
@CL_Snd_Restart_f = common dso_local global i32 0, align 4
@.str.106 = private unnamed_addr constant [12 x i8] c"vid_restart\00", align 1
@CL_Vid_Restart_f = common dso_local global i32 0, align 4
@.str.107 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@CL_Disconnect_f = common dso_local global i32 0, align 4
@.str.108 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@CL_Record_f = common dso_local global i32 0, align 4
@.str.109 = private unnamed_addr constant [5 x i8] c"demo\00", align 1
@CL_PlayDemo_f = common dso_local global i32 0, align 4
@CL_CompleteDemoName = common dso_local global i32 0, align 4
@.str.110 = private unnamed_addr constant [10 x i8] c"cinematic\00", align 1
@CL_PlayCinematic_f = common dso_local global i32 0, align 4
@.str.111 = private unnamed_addr constant [11 x i8] c"stoprecord\00", align 1
@CL_StopRecord_f = common dso_local global i32 0, align 4
@.str.112 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@CL_Connect_f = common dso_local global i32 0, align 4
@.str.113 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@CL_Reconnect_f = common dso_local global i32 0, align 4
@.str.114 = private unnamed_addr constant [13 x i8] c"localservers\00", align 1
@CL_LocalServers_f = common dso_local global i32 0, align 4
@.str.115 = private unnamed_addr constant [14 x i8] c"globalservers\00", align 1
@CL_GlobalServers_f = common dso_local global i32 0, align 4
@.str.116 = private unnamed_addr constant [5 x i8] c"rcon\00", align 1
@CL_Rcon_f = common dso_local global i32 0, align 4
@CL_CompleteRcon = common dso_local global i32 0, align 4
@.str.117 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@CL_Ping_f = common dso_local global i32 0, align 4
@.str.118 = private unnamed_addr constant [13 x i8] c"serverstatus\00", align 1
@CL_ServerStatus_f = common dso_local global i32 0, align 4
@.str.119 = private unnamed_addr constant [7 x i8] c"showip\00", align 1
@CL_ShowIP_f = common dso_local global i32 0, align 4
@.str.120 = private unnamed_addr constant [14 x i8] c"fs_openedList\00", align 1
@CL_OpenedPK3List_f = common dso_local global i32 0, align 4
@.str.121 = private unnamed_addr constant [18 x i8] c"fs_referencedList\00", align 1
@CL_ReferencedPK3List_f = common dso_local global i32 0, align 4
@CL_SetModel_f = common dso_local global i32 0, align 4
@.str.122 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@CL_Video_f = common dso_local global i32 0, align 4
@.str.123 = private unnamed_addr constant [10 x i8] c"stopvideo\00", align 1
@CL_StopVideo_f = common dso_local global i32 0, align 4
@.str.124 = private unnamed_addr constant [18 x i8] c"updatecustomitems\00", align 1
@CL_UpdateCustomItems_f = common dso_local global i32 0, align 4
@com_dedicated = common dso_local global %struct.TYPE_13__* null, align 8
@.str.125 = private unnamed_addr constant [6 x i8] c"sayto\00", align 1
@CL_Sayto_f = common dso_local global i32 0, align 4
@CL_CompletePlayerName = common dso_local global i32 0, align 4
@.str.126 = private unnamed_addr constant [11 x i8] c"cl_running\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"cl_guid\00", align 1
@.str.128 = private unnamed_addr constant [44 x i8] c"----- Client Initialization Complete -----\0A\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@CVAR_PROTECTED = common dso_local global i32 0, align 4
@DEFAULT_CURL_LIB = common dso_local global i8* null, align 8
@cl_cURLLib = common dso_local global i8* null, align 8
@cl_motd = common dso_local global i8* null, align 8
@cl_mumbleScale = common dso_local global i8* null, align 8
@cl_useMumble = common dso_local global i8* null, align 8
@cl_voip = common dso_local global %struct.TYPE_12__* null, align 8
@cl_voipCaptureMult = common dso_local global i8* null, align 8
@cl_voipGainDuringCapture = common dso_local global i8* null, align 8
@cl_voipProtocol = common dso_local global i8* null, align 8
@cl_voipSend = common dso_local global i8* null, align 8
@cl_voipSendTarget = common dso_local global i8* null, align 8
@cl_voipShowMeter = common dso_local global i8* null, align 8
@cl_voipUseVAD = common dso_local global i8* null, align 8
@cl_voipVADThreshold = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Init() #0 {
  %1 = call i32 @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @Con_Init()
  %3 = load i32, i32* @com_fullyInitialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @CL_ClearState()
  %7 = load i32, i32* @CA_DISCONNECTED, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @clc, i32 0, i32 0), align 4
  %8 = load i32, i32* @qfalse, align 4
  store i32 %8, i32* @cl_oldGameSet, align 4
  br label %9

9:                                                ; preds = %5, %0
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0), align 8
  %10 = call i32 (...) @CL_InitInput()
  %11 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %11, i8** @cl_noprint, align 8
  %12 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i8* %12, i8** @cl_timeout, align 8
  %13 = load i32, i32* @CVAR_TEMP, align 4
  %14 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  store i8* %14, i8** @cl_timeNudge, align 8
  %15 = load i32, i32* @CVAR_TEMP, align 4
  %16 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  store i8* %16, i8** @cl_shownet, align 8
  %17 = load i32, i32* @CVAR_TEMP, align 4
  %18 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  store i8* %18, i8** @cl_showSend, align 8
  %19 = load i32, i32* @CVAR_TEMP, align 4
  %20 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  store i8* %20, i8** @cl_showTimeDelta, align 8
  %21 = load i32, i32* @CVAR_TEMP, align 4
  %22 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  store i8* %22, i8** @cl_freezeDemo, align 8
  %23 = load i32, i32* @CVAR_TEMP, align 4
  %24 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %23)
  store i8* %24, i8** @rcon_client_password, align 8
  %25 = load i32, i32* @CVAR_TEMP, align 4
  %26 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %25)
  store i8* %26, i8** @cl_activeAction, align 8
  %27 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %27, i8** @cl_timedemo, align 8
  %28 = load i32, i32* @CVAR_ARCHIVE, align 4
  %29 = call i8* @Cvar_Get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %28)
  store i8* %29, i8** @cl_timedemoLog, align 8
  %30 = load i32, i32* @CVAR_ARCHIVE, align 4
  %31 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store i8* %31, i8** @cl_autoRecordDemo, align 8
  %32 = load i32, i32* @CVAR_ARCHIVE, align 4
  %33 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 %32)
  store i8* %33, i8** @cl_aviFrameRate, align 8
  %34 = load i32, i32* @CVAR_ARCHIVE, align 4
  %35 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %34)
  store i8* %35, i8** @cl_aviMotionJpeg, align 8
  %36 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %36, i8** @cl_forceavidemo, align 8
  %37 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 0)
  store i8* %37, i8** @rconAddress, align 8
  %38 = load i32, i32* @CVAR_ARCHIVE, align 4
  %39 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 %38)
  store i8* %39, i8** @cl_yawspeed, align 8
  %40 = load i32, i32* @CVAR_ARCHIVE, align 4
  %41 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 %40)
  store i8* %41, i8** @cl_pitchspeed, align 8
  %42 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i32 0)
  store i8* %42, i8** @cl_anglespeedkey, align 8
  %43 = load i32, i32* @CVAR_ARCHIVE, align 4
  %44 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 %43)
  store i8* %44, i8** @cl_maxpackets, align 8
  %45 = load i32, i32* @CVAR_ARCHIVE, align 4
  %46 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %45)
  store i8* %46, i8** @cl_packetdup, align 8
  %47 = load i32, i32* @CVAR_ARCHIVE, align 4
  %48 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %47)
  store i8* %48, i8** @cl_run, align 8
  %49 = load i32, i32* @CVAR_ARCHIVE, align 4
  %50 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i32 %49)
  store i8* %50, i8** @cl_sensitivity, align 8
  %51 = load i32, i32* @CVAR_ARCHIVE, align 4
  %52 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  store i8* %52, i8** @cl_mouseAccel, align 8
  %53 = load i32, i32* @CVAR_ARCHIVE, align 4
  %54 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %53)
  store i8* %54, i8** @cl_freelook, align 8
  %55 = load i32, i32* @CVAR_ARCHIVE, align 4
  %56 = call i8* @Cvar_Get(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i8* %56, i8** @cl_mouseAccelStyle, align 8
  %57 = load i32, i32* @CVAR_ARCHIVE, align 4
  %58 = call i8* @Cvar_Get(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i32 %57)
  %59 = bitcast i8* %58 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** @cl_mouseAccelOffset, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_mouseAccelOffset, align 8
  %61 = load i32, i32* @qfalse, align 4
  %62 = call i32 @Cvar_CheckRange(%struct.TYPE_12__* %60, float 0x3F50624DE0000000, i32 50000, i32 %61)
  %63 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %63, i8** @cl_showMouseRate, align 8
  %64 = load i32, i32* @CVAR_ARCHIVE, align 4
  %65 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  store i8* %65, i8** @cl_allowDownload, align 8
  %66 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %66, i8** @cl_conXOffset, align 8
  %67 = load i32, i32* @CVAR_ARCHIVE, align 4
  %68 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %67)
  store i8* %68, i8** @cl_inGameVideo, align 8
  %69 = call i8* @Cvar_Get(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i32 0)
  store i8* %69, i8** @cl_serverStatusResendTime, align 8
  %70 = load i32, i32* @CVAR_ARCHIVE, align 4
  %71 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @CVAR_ARCHIVE, align 4
  %73 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i32 %72)
  store i8* %73, i8** @m_pitch, align 8
  %74 = load i32, i32* @CVAR_ARCHIVE, align 4
  %75 = call i8* @Cvar_Get(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i32 %74)
  store i8* %75, i8** @m_yaw, align 8
  %76 = load i32, i32* @CVAR_ARCHIVE, align 4
  %77 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i32 %76)
  store i8* %77, i8** @m_forward, align 8
  %78 = load i32, i32* @CVAR_ARCHIVE, align 4
  %79 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i32 %78)
  store i8* %79, i8** @m_side, align 8
  %80 = load i32, i32* @CVAR_ARCHIVE, align 4
  %81 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  store i8* %81, i8** @m_filter, align 8
  %82 = load i32, i32* @CVAR_ARCHIVE, align 4
  %83 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i32 %82)
  store i8* %83, i8** @j_pitch, align 8
  %84 = load i32, i32* @CVAR_ARCHIVE, align 4
  %85 = call i8* @Cvar_Get(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i32 %84)
  store i8* %85, i8** @j_yaw, align 8
  %86 = load i32, i32* @CVAR_ARCHIVE, align 4
  %87 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i32 %86)
  store i8* %87, i8** @j_forward, align 8
  %88 = load i32, i32* @CVAR_ARCHIVE, align 4
  %89 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), i32 %88)
  store i8* %89, i8** @j_side, align 8
  %90 = load i32, i32* @CVAR_ARCHIVE, align 4
  %91 = call i8* @Cvar_Get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  store i8* %91, i8** @j_up, align 8
  %92 = load i32, i32* @CVAR_ARCHIVE, align 4
  %93 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), i32 %92)
  %94 = bitcast i8* %93 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** @j_pitch_axis, align 8
  %95 = load i32, i32* @CVAR_ARCHIVE, align 4
  %96 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i32 %95)
  %97 = bitcast i8* %96 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** @j_yaw_axis, align 8
  %98 = load i32, i32* @CVAR_ARCHIVE, align 4
  %99 = call i8* @Cvar_Get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %98)
  %100 = bitcast i8* %99 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** @j_forward_axis, align 8
  %101 = load i32, i32* @CVAR_ARCHIVE, align 4
  %102 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = bitcast i8* %102 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** @j_side_axis, align 8
  %104 = load i32, i32* @CVAR_ARCHIVE, align 4
  %105 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i32 %104)
  %106 = bitcast i8* %105 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** @j_up_axis, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** @j_pitch_axis, align 8
  %108 = load i32, i32* @MAX_JOYSTICK_AXIS, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* @qtrue, align 4
  %111 = call i32 @Cvar_CheckRange(%struct.TYPE_12__* %107, float 0.000000e+00, i32 %109, i32 %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** @j_yaw_axis, align 8
  %113 = load i32, i32* @MAX_JOYSTICK_AXIS, align 4
  %114 = sub nsw i32 %113, 1
  %115 = load i32, i32* @qtrue, align 4
  %116 = call i32 @Cvar_CheckRange(%struct.TYPE_12__* %112, float 0.000000e+00, i32 %114, i32 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** @j_forward_axis, align 8
  %118 = load i32, i32* @MAX_JOYSTICK_AXIS, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load i32, i32* @qtrue, align 4
  %121 = call i32 @Cvar_CheckRange(%struct.TYPE_12__* %117, float 0.000000e+00, i32 %119, i32 %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** @j_side_axis, align 8
  %123 = load i32, i32* @MAX_JOYSTICK_AXIS, align 4
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* @qtrue, align 4
  %126 = call i32 @Cvar_CheckRange(%struct.TYPE_12__* %122, float 0.000000e+00, i32 %124, i32 %125)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** @j_up_axis, align 8
  %128 = load i32, i32* @MAX_JOYSTICK_AXIS, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* @qtrue, align 4
  %131 = call i32 @Cvar_CheckRange(%struct.TYPE_12__* %127, float 0.000000e+00, i32 %129, i32 %130)
  %132 = load i32, i32* @CVAR_ROM, align 4
  %133 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %132)
  store i8* %133, i8** @cl_motdString, align 8
  %134 = load i32, i32* @CVAR_ARCHIVE, align 4
  %135 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @CVAR_ARCHIVE, align 4
  %137 = call i8* @Cvar_Get(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %136)
  store i8* %137, i8** @cl_lanForcePackets, align 8
  %138 = load i32, i32* @CVAR_ARCHIVE, align 4
  %139 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %138)
  store i8* %139, i8** @cl_guidServerUniq, align 8
  %140 = load i32, i32* @CVAR_ARCHIVE, align 4
  %141 = call i8* @Cvar_Get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i64 0, i64 0), i32 %140)
  store i8* %141, i8** @cl_consoleKeys, align 8
  %142 = load i32, i32* @CVAR_USERINFO, align 4
  %143 = load i32, i32* @CVAR_ARCHIVE, align 4
  %144 = or i32 %142, %143
  %145 = call i8* @Cvar_Get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* @CVAR_USERINFO, align 4
  %147 = load i32, i32* @CVAR_ARCHIVE, align 4
  %148 = or i32 %146, %147
  %149 = call i8* @Cvar_Get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i32 %148)
  store i8* %149, i8** @cl_rate, align 8
  %150 = load i32, i32* @CVAR_USERINFO, align 4
  %151 = load i32, i32* @CVAR_ARCHIVE, align 4
  %152 = or i32 %150, %151
  %153 = call i8* @Cvar_Get(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @CVAR_USERINFO, align 4
  %155 = load i32, i32* @CVAR_ARCHIVE, align 4
  %156 = or i32 %154, %155
  %157 = call i8* @Cvar_Get(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @CVAR_USERINFO, align 4
  %159 = load i32, i32* @CVAR_ARCHIVE, align 4
  %160 = or i32 %158, %159
  %161 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @CVAR_USERINFO, align 4
  %163 = load i32, i32* @CVAR_ARCHIVE, align 4
  %164 = or i32 %162, %163
  %165 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @CVAR_USERINFO, align 4
  %167 = load i32, i32* @CVAR_ARCHIVE, align 4
  %168 = or i32 %166, %167
  %169 = call i8* @Cvar_Get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* @CVAR_SERVERINFO, align 4
  %171 = load i32, i32* @CVAR_ARCHIVE, align 4
  %172 = or i32 %170, %171
  %173 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* @CVAR_SERVERINFO, align 4
  %175 = load i32, i32* @CVAR_ARCHIVE, align 4
  %176 = or i32 %174, %175
  %177 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @CVAR_USERINFO, align 4
  %179 = load i32, i32* @CVAR_ARCHIVE, align 4
  %180 = or i32 %178, %179
  %181 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @CVAR_USERINFO, align 4
  %183 = load i32, i32* @CVAR_ARCHIVE, align 4
  %184 = or i32 %182, %183
  %185 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @CVAR_USERINFO, align 4
  %187 = load i32, i32* @CVAR_ARCHIVE, align 4
  %188 = or i32 %186, %187
  %189 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @CVAR_USERINFO, align 4
  %191 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @CVAR_USERINFO, align 4
  %193 = load i32, i32* @CVAR_ARCHIVE, align 4
  %194 = or i32 %192, %193
  %195 = call i8* @Cvar_Get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.95, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* @CVAR_USERINFO, align 4
  %197 = load i32, i32* @CVAR_ARCHIVE, align 4
  %198 = or i32 %196, %197
  %199 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* @CVAR_USERINFO, align 4
  %201 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @CVAR_USERINFO, align 4
  %203 = load i32, i32* @CVAR_ARCHIVE, align 4
  %204 = or i32 %202, %203
  %205 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.99, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* @CVAR_ARCHIVE, align 4
  %207 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @CVAR_ROM, align 4
  %209 = call i8* @Cvar_Get(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* @CL_ForwardToServer_f, align 4
  %211 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @CL_Configstrings_f, align 4
  %213 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* @CL_Clientinfo_f, align 4
  %215 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.104, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* @CL_Snd_Restart_f, align 4
  %217 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* @CL_Vid_Restart_f, align 4
  %219 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @CL_Disconnect_f, align 4
  %221 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i64 0, i64 0), i32 %220)
  %222 = load i32, i32* @CL_Record_f, align 4
  %223 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* @CL_PlayDemo_f, align 4
  %225 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0), i32 %224)
  %226 = load i32, i32* @CL_CompleteDemoName, align 4
  %227 = call i32 @Cmd_SetCommandCompletionFunc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @CL_PlayCinematic_f, align 4
  %229 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i64 0, i64 0), i32 %228)
  %230 = load i32, i32* @CL_StopRecord_f, align 4
  %231 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @CL_Connect_f, align 4
  %233 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.112, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* @CL_Reconnect_f, align 4
  %235 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i64 0, i64 0), i32 %234)
  %236 = load i32, i32* @CL_LocalServers_f, align 4
  %237 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i64 0, i64 0), i32 %236)
  %238 = load i32, i32* @CL_GlobalServers_f, align 4
  %239 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.115, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* @CL_Rcon_f, align 4
  %241 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i64 0, i64 0), i32 %240)
  %242 = load i32, i32* @CL_CompleteRcon, align 4
  %243 = call i32 @Cmd_SetCommandCompletionFunc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.116, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* @CL_Ping_f, align 4
  %245 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* @CL_ServerStatus_f, align 4
  %247 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i64 0, i64 0), i32 %246)
  %248 = load i32, i32* @CL_ShowIP_f, align 4
  %249 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i64 0, i64 0), i32 %248)
  %250 = load i32, i32* @CL_OpenedPK3List_f, align 4
  %251 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* @CL_ReferencedPK3List_f, align 4
  %253 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.121, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* @CL_SetModel_f, align 4
  %255 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* @CL_Video_f, align 4
  %257 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* @CL_StopVideo_f, align 4
  %259 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i64 0, i64 0), i32 %258)
  %260 = load i32, i32* @CL_UpdateCustomItems_f, align 4
  %261 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.124, i64 0, i64 0), i32 %260)
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_dedicated, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %9
  %267 = load i32, i32* @CL_Sayto_f, align 4
  %268 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* @CL_CompletePlayerName, align 4
  %270 = call i32 @Cmd_SetCommandCompletionFunc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %266, %9
  %272 = call i32 (...) @CL_InitRef()
  %273 = call i32 (...) @SCR_Init()
  %274 = call i32 @Cvar_Set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %275 = call i32 (...) @CL_GenerateQKey()
  %276 = load i32, i32* @CVAR_USERINFO, align 4
  %277 = load i32, i32* @CVAR_ROM, align 4
  %278 = or i32 %276, %277
  %279 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.127, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i32 %278)
  %280 = call i32 @CL_UpdateGUID(i32* null, i32 0)
  %281 = call i32 @Com_Printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.128, i64 0, i64 0))
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Con_Init(...) #1

declare dso_local i32 @CL_ClearState(...) #1

declare dso_local i32 @CL_InitInput(...) #1

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @Cvar_CheckRange(%struct.TYPE_12__*, float, i32, i32) #1

declare dso_local i32 @Cmd_AddCommand(i8*, i32) #1

declare dso_local i32 @Cmd_SetCommandCompletionFunc(i8*, i32) #1

declare dso_local i32 @CL_InitRef(...) #1

declare dso_local i32 @SCR_Init(...) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @CL_GenerateQKey(...) #1

declare dso_local i32 @CL_UpdateGUID(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
