#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  state; } ;
struct TYPE_14__ {scalar_t__ realtime; } ;
struct TYPE_13__ {int /*<<< orphan*/  integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CL_Clientinfo_f ; 
 int /*<<< orphan*/  CL_CompleteDemoName ; 
 int /*<<< orphan*/  CL_CompletePlayerName ; 
 int /*<<< orphan*/  CL_CompleteRcon ; 
 int /*<<< orphan*/  CL_Configstrings_f ; 
 int /*<<< orphan*/  CL_Connect_f ; 
 int /*<<< orphan*/  CL_Disconnect_f ; 
 int /*<<< orphan*/  CL_ForwardToServer_f ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  CL_GlobalServers_f ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  CL_LocalServers_f ; 
 int /*<<< orphan*/  CL_OpenedPK3List_f ; 
 int /*<<< orphan*/  CL_Ping_f ; 
 int /*<<< orphan*/  CL_PlayCinematic_f ; 
 int /*<<< orphan*/  CL_PlayDemo_f ; 
 int /*<<< orphan*/  CL_Rcon_f ; 
 int /*<<< orphan*/  CL_Reconnect_f ; 
 int /*<<< orphan*/  CL_Record_f ; 
 int /*<<< orphan*/  CL_ReferencedPK3List_f ; 
 int /*<<< orphan*/  CL_Sayto_f ; 
 int /*<<< orphan*/  CL_ServerStatus_f ; 
 int /*<<< orphan*/  CL_SetModel_f ; 
 int /*<<< orphan*/  CL_ShowIP_f ; 
 int /*<<< orphan*/  CL_Snd_Restart_f ; 
 int /*<<< orphan*/  CL_StopRecord_f ; 
 int /*<<< orphan*/  CL_StopVideo_f ; 
 int /*<<< orphan*/  CL_UpdateCustomItems_f ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CL_Vid_Restart_f ; 
 int /*<<< orphan*/  CL_Video_f ; 
 int CVAR_ARCHIVE ; 
 int CVAR_LATCH ; 
 int CVAR_PROTECTED ; 
 int CVAR_ROM ; 
 int CVAR_SERVERINFO ; 
 int CVAR_TEMP ; 
 int CVAR_USERINFO ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,float,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 char* DEFAULT_CURL_LIB ; 
 int MAX_JOYSTICK_AXIS ; 
 int /*<<< orphan*/  FUNC12 () ; 
 void* cl_activeAction ; 
 void* cl_allowDownload ; 
 void* cl_anglespeedkey ; 
 void* cl_autoRecordDemo ; 
 void* cl_aviFrameRate ; 
 void* cl_aviMotionJpeg ; 
 void* cl_cURLLib ; 
 void* cl_conXOffset ; 
 void* cl_consoleKeys ; 
 void* cl_forceavidemo ; 
 void* cl_freelook ; 
 void* cl_freezeDemo ; 
 void* cl_guidServerUniq ; 
 void* cl_inGameVideo ; 
 void* cl_lanForcePackets ; 
 void* cl_maxpackets ; 
 void* cl_motd ; 
 void* cl_motdString ; 
 void* cl_mouseAccel ; 
 TYPE_1__* cl_mouseAccelOffset ; 
 void* cl_mouseAccelStyle ; 
 void* cl_mumbleScale ; 
 void* cl_noprint ; 
 int /*<<< orphan*/  cl_oldGameSet ; 
 void* cl_packetdup ; 
 void* cl_pitchspeed ; 
 void* cl_rate ; 
 void* cl_run ; 
 void* cl_sensitivity ; 
 void* cl_serverStatusResendTime ; 
 void* cl_showMouseRate ; 
 void* cl_showSend ; 
 void* cl_showTimeDelta ; 
 void* cl_shownet ; 
 void* cl_timeNudge ; 
 void* cl_timedemo ; 
 void* cl_timedemoLog ; 
 void* cl_timeout ; 
 void* cl_useMumble ; 
 TYPE_1__* cl_voip ; 
 void* cl_voipCaptureMult ; 
 void* cl_voipGainDuringCapture ; 
 void* cl_voipProtocol ; 
 void* cl_voipSend ; 
 void* cl_voipSendTarget ; 
 void* cl_voipShowMeter ; 
 void* cl_voipUseVAD ; 
 void* cl_voipVADThreshold ; 
 void* cl_yawspeed ; 
 TYPE_8__ clc ; 
 TYPE_7__ cls ; 
 TYPE_6__* com_dedicated ; 
 int /*<<< orphan*/  com_fullyInitialized ; 
 void* j_forward ; 
 TYPE_1__* j_forward_axis ; 
 void* j_pitch ; 
 TYPE_1__* j_pitch_axis ; 
 void* j_side ; 
 TYPE_1__* j_side_axis ; 
 void* j_up ; 
 TYPE_1__* j_up_axis ; 
 void* j_yaw ; 
 TYPE_1__* j_yaw_axis ; 
 void* m_filter ; 
 void* m_forward ; 
 void* m_pitch ; 
 void* m_side ; 
 void* m_yaw ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 void* rconAddress ; 
 void* rcon_client_password ; 

void FUNC13( void ) {
	FUNC7( "----- Client Initialization -----\n" );

	FUNC8 ();

	if(!com_fullyInitialized)
	{
		FUNC0();
		clc.state = CA_DISCONNECTED;	// no longer CA_UNINITIALIZED
		cl_oldGameSet = qfalse;
	}

	cls.realtime = 0;

	FUNC2 ();

	//
	// register our variables
	//
	cl_noprint = FUNC10( "cl_noprint", "0", 0 );
#ifdef UPDATE_SERVER_NAME
	cl_motd = Cvar_Get ("cl_motd", "1", 0);
#endif

	cl_timeout = FUNC10 ("cl_timeout", "200", 0);

	cl_timeNudge = FUNC10 ("cl_timeNudge", "0", CVAR_TEMP );
	cl_shownet = FUNC10 ("cl_shownet", "0", CVAR_TEMP );
	cl_showSend = FUNC10 ("cl_showSend", "0", CVAR_TEMP );
	cl_showTimeDelta = FUNC10 ("cl_showTimeDelta", "0", CVAR_TEMP );
	cl_freezeDemo = FUNC10 ("cl_freezeDemo", "0", CVAR_TEMP );
	rcon_client_password = FUNC10 ("rconPassword", "", CVAR_TEMP );
	cl_activeAction = FUNC10( "activeAction", "", CVAR_TEMP );

	cl_timedemo = FUNC10 ("timedemo", "0", 0);
	cl_timedemoLog = FUNC10 ("cl_timedemoLog", "", CVAR_ARCHIVE);
	cl_autoRecordDemo = FUNC10 ("cl_autoRecordDemo", "0", CVAR_ARCHIVE);
	cl_aviFrameRate = FUNC10 ("cl_aviFrameRate", "25", CVAR_ARCHIVE);
	cl_aviMotionJpeg = FUNC10 ("cl_aviMotionJpeg", "1", CVAR_ARCHIVE);
	cl_forceavidemo = FUNC10 ("cl_forceavidemo", "0", 0);

	rconAddress = FUNC10 ("rconAddress", "", 0);

	cl_yawspeed = FUNC10 ("cl_yawspeed", "140", CVAR_ARCHIVE);
	cl_pitchspeed = FUNC10 ("cl_pitchspeed", "140", CVAR_ARCHIVE);
	cl_anglespeedkey = FUNC10 ("cl_anglespeedkey", "1.5", 0);

	cl_maxpackets = FUNC10 ("cl_maxpackets", "30", CVAR_ARCHIVE );
	cl_packetdup = FUNC10 ("cl_packetdup", "1", CVAR_ARCHIVE );

	cl_run = FUNC10 ("cl_run", "1", CVAR_ARCHIVE);
	cl_sensitivity = FUNC10 ("sensitivity", "5", CVAR_ARCHIVE);
	cl_mouseAccel = FUNC10 ("cl_mouseAccel", "0", CVAR_ARCHIVE);
	cl_freelook = FUNC10( "cl_freelook", "1", CVAR_ARCHIVE );

	// 0: legacy mouse acceleration
	// 1: new implementation
	cl_mouseAccelStyle = FUNC10( "cl_mouseAccelStyle", "0", CVAR_ARCHIVE );
	// offset for the power function (for style 1, ignored otherwise)
	// this should be set to the max rate value
	cl_mouseAccelOffset = FUNC10( "cl_mouseAccelOffset", "5", CVAR_ARCHIVE );
	FUNC9(cl_mouseAccelOffset, 0.001f, 50000.0f, qfalse);

	cl_showMouseRate = FUNC10 ("cl_showmouserate", "0", 0);

	cl_allowDownload = FUNC10 ("cl_allowDownload", "0", CVAR_ARCHIVE);
#ifdef USE_CURL_DLOPEN
	cl_cURLLib = Cvar_Get("cl_cURLLib", DEFAULT_CURL_LIB, CVAR_ARCHIVE | CVAR_PROTECTED);
#endif

	cl_conXOffset = FUNC10 ("cl_conXOffset", "0", 0);
#ifdef __APPLE__
	// In game video is REALLY slow in Mac OS X right now due to driver slowness
	cl_inGameVideo = Cvar_Get ("r_inGameVideo", "0", CVAR_ARCHIVE);
#else
	cl_inGameVideo = FUNC10 ("r_inGameVideo", "1", CVAR_ARCHIVE);
#endif

	cl_serverStatusResendTime = FUNC10 ("cl_serverStatusResendTime", "750", 0);

	// init autoswitch so the ui will have it correctly even
	// if the cgame hasn't been started
	FUNC10 ("cg_autoswitch", "1", CVAR_ARCHIVE);

	m_pitch = FUNC10 ("m_pitch", "0.022", CVAR_ARCHIVE);
	m_yaw = FUNC10 ("m_yaw", "0.022", CVAR_ARCHIVE);
	m_forward = FUNC10 ("m_forward", "0.25", CVAR_ARCHIVE);
	m_side = FUNC10 ("m_side", "0.25", CVAR_ARCHIVE);
#ifdef __APPLE__
	// Input is jittery on OS X w/o this
	m_filter = Cvar_Get ("m_filter", "1", CVAR_ARCHIVE);
#else
	m_filter = FUNC10 ("m_filter", "0", CVAR_ARCHIVE);
#endif

	j_pitch =        FUNC10 ("j_pitch",        "0.022", CVAR_ARCHIVE);
	j_yaw =          FUNC10 ("j_yaw",          "-0.022", CVAR_ARCHIVE);
	j_forward =      FUNC10 ("j_forward",      "-0.25", CVAR_ARCHIVE);
	j_side =         FUNC10 ("j_side",         "0.25", CVAR_ARCHIVE);
	j_up =           FUNC10 ("j_up",           "0", CVAR_ARCHIVE);

	j_pitch_axis =   FUNC10 ("j_pitch_axis",   "3", CVAR_ARCHIVE);
	j_yaw_axis =     FUNC10 ("j_yaw_axis",     "2", CVAR_ARCHIVE);
	j_forward_axis = FUNC10 ("j_forward_axis", "1", CVAR_ARCHIVE);
	j_side_axis =    FUNC10 ("j_side_axis",    "0", CVAR_ARCHIVE);
	j_up_axis =      FUNC10 ("j_up_axis",      "4", CVAR_ARCHIVE);

	FUNC9(j_pitch_axis, 0, MAX_JOYSTICK_AXIS-1, qtrue);
	FUNC9(j_yaw_axis, 0, MAX_JOYSTICK_AXIS-1, qtrue);
	FUNC9(j_forward_axis, 0, MAX_JOYSTICK_AXIS-1, qtrue);
	FUNC9(j_side_axis, 0, MAX_JOYSTICK_AXIS-1, qtrue);
	FUNC9(j_up_axis, 0, MAX_JOYSTICK_AXIS-1, qtrue);

	cl_motdString = FUNC10( "cl_motdString", "", CVAR_ROM );

	FUNC10( "cl_maxPing", "800", CVAR_ARCHIVE );

	cl_lanForcePackets = FUNC10 ("cl_lanForcePackets", "1", CVAR_ARCHIVE);

	cl_guidServerUniq = FUNC10 ("cl_guidServerUniq", "1", CVAR_ARCHIVE);

	// ~ and `, as keys and characters
	cl_consoleKeys = FUNC10( "cl_consoleKeys", "~ ` 0x7e 0x60", CVAR_ARCHIVE);

	// userinfo
	FUNC10 ("name", "UnnamedPlayer", CVAR_USERINFO | CVAR_ARCHIVE );
	cl_rate = FUNC10 ("rate", "25000", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC10 ("snaps", "20", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC10 ("model", "sarge", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC10 ("headmodel", "sarge", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC10 ("team_model", "james", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC10 ("team_headmodel", "*james", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC10 ("g_redTeam", "Stroggs", CVAR_SERVERINFO | CVAR_ARCHIVE);
	FUNC10 ("g_blueTeam", "Pagans", CVAR_SERVERINFO | CVAR_ARCHIVE);
	FUNC10 ("color1",  "4", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC10 ("color2", "5", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC10 ("handicap", "100", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC10 ("teamtask", "0", CVAR_USERINFO );
	FUNC10 ("sex", "male", CVAR_USERINFO | CVAR_ARCHIVE );
	FUNC10 ("cl_anonymous", "0", CVAR_USERINFO | CVAR_ARCHIVE );

	FUNC10 ("password", "", CVAR_USERINFO);
	FUNC10 ("cg_predictItems", "1", CVAR_USERINFO | CVAR_ARCHIVE );

#ifdef USE_MUMBLE
	cl_useMumble = Cvar_Get ("cl_useMumble", "0", CVAR_ARCHIVE | CVAR_LATCH);
	cl_mumbleScale = Cvar_Get ("cl_mumbleScale", "0.0254", CVAR_ARCHIVE);
#endif

#ifdef USE_VOIP
	cl_voipSend = Cvar_Get ("cl_voipSend", "0", 0);
	cl_voipSendTarget = Cvar_Get ("cl_voipSendTarget", "spatial", 0);
	cl_voipGainDuringCapture = Cvar_Get ("cl_voipGainDuringCapture", "0.2", CVAR_ARCHIVE);
	cl_voipCaptureMult = Cvar_Get ("cl_voipCaptureMult", "2.0", CVAR_ARCHIVE);
	cl_voipUseVAD = Cvar_Get ("cl_voipUseVAD", "0", CVAR_ARCHIVE);
	cl_voipVADThreshold = Cvar_Get ("cl_voipVADThreshold", "0.25", CVAR_ARCHIVE);
	cl_voipShowMeter = Cvar_Get ("cl_voipShowMeter", "1", CVAR_ARCHIVE);

	cl_voip = Cvar_Get ("cl_voip", "1", CVAR_ARCHIVE);
	Cvar_CheckRange( cl_voip, 0, 1, qtrue );
	cl_voipProtocol = Cvar_Get ("cl_voipProtocol", cl_voip->integer ? "opus" : "", CVAR_USERINFO | CVAR_ROM);
#endif


	// cgame might not be initialized before menu is used
	FUNC10 ("cg_viewsize", "100", CVAR_ARCHIVE );
	// Make sure cg_stereoSeparation is zero as that variable is deprecated and should not be used anymore.
	FUNC10 ("cg_stereoSeparation", "0", CVAR_ROM);

	//
	// register our commands
	//
	FUNC5 ("cmd", CL_ForwardToServer_f);
	FUNC5 ("configstrings", CL_Configstrings_f);
	FUNC5 ("clientinfo", CL_Clientinfo_f);
	FUNC5 ("snd_restart", CL_Snd_Restart_f);
	FUNC5 ("vid_restart", CL_Vid_Restart_f);
	FUNC5 ("disconnect", CL_Disconnect_f);
	FUNC5 ("record", CL_Record_f);
	FUNC5 ("demo", CL_PlayDemo_f);
	FUNC6( "demo", CL_CompleteDemoName );
	FUNC5 ("cinematic", CL_PlayCinematic_f);
	FUNC5 ("stoprecord", CL_StopRecord_f);
	FUNC5 ("connect", CL_Connect_f);
	FUNC5 ("reconnect", CL_Reconnect_f);
	FUNC5 ("localservers", CL_LocalServers_f);
	FUNC5 ("globalservers", CL_GlobalServers_f);
	FUNC5 ("rcon", CL_Rcon_f);
	FUNC6( "rcon", CL_CompleteRcon );
	FUNC5 ("ping", CL_Ping_f );
	FUNC5 ("serverstatus", CL_ServerStatus_f );
	FUNC5 ("showip", CL_ShowIP_f );
	FUNC5 ("fs_openedList", CL_OpenedPK3List_f );
	FUNC5 ("fs_referencedList", CL_ReferencedPK3List_f );
	FUNC5 ("model", CL_SetModel_f );
	FUNC5 ("video", CL_Video_f );
	FUNC5 ("stopvideo", CL_StopVideo_f );
	FUNC5 ("updatecustomitems", CL_UpdateCustomItems_f );
	if( !com_dedicated->integer ) {
		FUNC5 ("sayto", CL_Sayto_f );
		FUNC6( "sayto", CL_CompletePlayerName );
	}
	FUNC3();

	FUNC12 ();

//	Cbuf_Execute ();

	FUNC11( "cl_running", "1" );

	FUNC1();
	FUNC10( "cl_guid", "", CVAR_USERINFO | CVAR_ROM );
	FUNC4( NULL, 0 );

	FUNC7( "----- Client Initialization Complete -----\n" );
}