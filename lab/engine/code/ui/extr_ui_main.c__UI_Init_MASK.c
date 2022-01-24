#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_17__ {double vidHeight; double vidWidth; } ;
struct TYPE_18__ {double yscale; double xscale; double bias; void* (* registerShaderNoMip ) (char*) ;scalar_t__ (* getCVarValue ) (char*) ;void* whiteShader; void* cursor; int /*<<< orphan*/ * runCinematicFrame; int /*<<< orphan*/ * drawCinematic; int /*<<< orphan*/ * stopCinematic; int /*<<< orphan*/ * playCinematic; int /*<<< orphan*/ * stopBackgroundTrack; int /*<<< orphan*/ * startBackgroundTrack; int /*<<< orphan*/ * registerSound; int /*<<< orphan*/ * ownerDrawWidth; int /*<<< orphan*/ * Pause; int /*<<< orphan*/ * Print; int /*<<< orphan*/ * Error; int /*<<< orphan*/ * executeText; int /*<<< orphan*/ * keynumToStringBuf; int /*<<< orphan*/ * getBindingBuf; int /*<<< orphan*/ * setBinding; int /*<<< orphan*/ * feederSelection; int /*<<< orphan*/ * feederItemText; int /*<<< orphan*/ * feederItemImage; int /*<<< orphan*/ * feederCount; int /*<<< orphan*/ * ownerDrawHandleKey; int /*<<< orphan*/ * startLocalSound; int /*<<< orphan*/ * getOverstrikeMode; int /*<<< orphan*/ * setOverstrikeMode; int /*<<< orphan*/ * drawTextWithCursor; int /*<<< orphan*/  getCVarString; int /*<<< orphan*/  (* setCVar ) (char*,char*) ;int /*<<< orphan*/ * getTeamColor; int /*<<< orphan*/ * runScript; int /*<<< orphan*/ * ownerDrawVisible; int /*<<< orphan*/ * getValue; int /*<<< orphan*/ * ownerDrawItem; int /*<<< orphan*/ * registerFont; int /*<<< orphan*/ * renderScene; int /*<<< orphan*/ * addRefEntityToScene; int /*<<< orphan*/ * clearScene; int /*<<< orphan*/ * drawTopBottom; int /*<<< orphan*/ * drawSides; int /*<<< orphan*/ * drawRect; int /*<<< orphan*/ * fillRect; int /*<<< orphan*/ * modelBounds; int /*<<< orphan*/ * registerModel; int /*<<< orphan*/ * textHeight; int /*<<< orphan*/ * textWidth; int /*<<< orphan*/ * drawText; int /*<<< orphan*/ * drawStretchPic; int /*<<< orphan*/ * drawHandlePic; int /*<<< orphan*/ * setColor; TYPE_8__ glconfig; } ;
struct TYPE_12__ {int currentServerCinematic; } ;
struct TYPE_16__ {int currentCrosshair; int previewMovie; TYPE_3__ serverStatus; int /*<<< orphan*/  effectsColor; TYPE_2__* gameTypes; TYPE_1__* mapList; scalar_t__ inGameLoad; scalar_t__ aliasCount; scalar_t__ characterCount; scalar_t__ teamCount; TYPE_9__ uiDC; } ;
struct TYPE_15__ {size_t integer; } ;
struct TYPE_14__ {size_t integer; } ;
struct TYPE_13__ {int /*<<< orphan*/  integer; } ;
struct TYPE_11__ {int /*<<< orphan*/  gtEnum; } ;
struct TYPE_10__ {int /*<<< orphan*/  mapLoadName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  Com_Error ; 
 int /*<<< orphan*/  Com_Printf ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int NUM_CROSSHAIRS ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  Text_Height ; 
 int /*<<< orphan*/  Text_Paint ; 
 int /*<<< orphan*/  Text_PaintWithCursor ; 
 int /*<<< orphan*/  Text_Width ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  UI_DrawCinematic ; 
 int /*<<< orphan*/  UI_DrawHandlePic ; 
 int /*<<< orphan*/  UI_FeederCount ; 
 int /*<<< orphan*/  UI_FeederItemImage ; 
 int /*<<< orphan*/  UI_FeederItemText ; 
 int /*<<< orphan*/  UI_FeederSelection ; 
 int /*<<< orphan*/  UI_FillRect ; 
 int /*<<< orphan*/  UI_GetTeamColor ; 
 int /*<<< orphan*/  UI_GetValue ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  UI_OwnerDraw ; 
 int /*<<< orphan*/  UI_OwnerDrawHandleKey ; 
 int /*<<< orphan*/  UI_OwnerDrawVisible ; 
 int /*<<< orphan*/  UI_OwnerDrawWidth ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  UI_Pause ; 
 int /*<<< orphan*/  UI_PlayCinematic ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  UI_RunCinematicFrame ; 
 int /*<<< orphan*/  UI_RunMenuScript ; 
 int /*<<< orphan*/  UI_SetColor ; 
 int /*<<< orphan*/  UI_StopCinematic ; 
 int /*<<< orphan*/  _UI_DrawRect ; 
 int /*<<< orphan*/  _UI_DrawSides ; 
 int /*<<< orphan*/  _UI_DrawTopBottom ; 
 int /*<<< orphan*/ * gamecodetoui ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  trap_Cmd_ExecuteText ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  trap_Cvar_VariableStringBuffer ; 
 scalar_t__ FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_8__*) ; 
 int /*<<< orphan*/  trap_Key_GetBindingBuf ; 
 int /*<<< orphan*/  trap_Key_GetOverstrikeMode ; 
 int /*<<< orphan*/  trap_Key_KeynumToStringBuf ; 
 int /*<<< orphan*/  trap_Key_SetBinding ; 
 int /*<<< orphan*/  trap_Key_SetOverstrikeMode ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  trap_R_AddRefEntityToScene ; 
 int /*<<< orphan*/  trap_R_ClearScene ; 
 int /*<<< orphan*/  trap_R_DrawStretchPic ; 
 int /*<<< orphan*/  trap_R_ModelBounds ; 
 int /*<<< orphan*/  trap_R_RegisterFont ; 
 int /*<<< orphan*/  trap_R_RegisterModel ; 
 void* FUNC21 (char*) ; 
 int /*<<< orphan*/  trap_R_RenderScene ; 
 int /*<<< orphan*/  trap_S_RegisterSound ; 
 int /*<<< orphan*/  trap_S_StartBackgroundTrack ; 
 int /*<<< orphan*/  trap_S_StartLocalSound ; 
 int /*<<< orphan*/  trap_S_StopBackgroundTrack ; 
 TYPE_7__ uiInfo ; 
 TYPE_6__ ui_currentMap ; 
 TYPE_5__ ui_gameType ; 
 TYPE_4__ ui_netGameType ; 
 char* FUNC22 (char*,int /*<<< orphan*/ ) ; 

void FUNC23( qboolean inGameLoad ) {
	const char *menuSet;

	//uiInfo.inGameLoad = inGameLoad;

	FUNC15();
	FUNC7();

	FUNC1();

	// cache redundant calulations
	FUNC19( &uiInfo.uiDC.glconfig );

	// for 640x480 virtualized screen
	uiInfo.uiDC.yscale = uiInfo.uiDC.glconfig.vidHeight * (1.0/480.0);
	uiInfo.uiDC.xscale = uiInfo.uiDC.glconfig.vidWidth * (1.0/640.0);
	if ( uiInfo.uiDC.glconfig.vidWidth * 480 > uiInfo.uiDC.glconfig.vidHeight * 640 ) {
		// wide screen
		uiInfo.uiDC.bias = 0.5 * ( uiInfo.uiDC.glconfig.vidWidth - ( uiInfo.uiDC.glconfig.vidHeight * (640.0/480.0) ) );
		uiInfo.uiDC.xscale = uiInfo.uiDC.yscale;
	}
	else {
		// no wide screen
		uiInfo.uiDC.bias = 0;
	}


  //UI_Load();
	uiInfo.uiDC.registerShaderNoMip = &trap_R_RegisterShaderNoMip;
	uiInfo.uiDC.setColor = &UI_SetColor;
	uiInfo.uiDC.drawHandlePic = &UI_DrawHandlePic;
	uiInfo.uiDC.drawStretchPic = &trap_R_DrawStretchPic;
	uiInfo.uiDC.drawText = &Text_Paint;
	uiInfo.uiDC.textWidth = &Text_Width;
	uiInfo.uiDC.textHeight = &Text_Height;
	uiInfo.uiDC.registerModel = &trap_R_RegisterModel;
	uiInfo.uiDC.modelBounds = &trap_R_ModelBounds;
	uiInfo.uiDC.fillRect = &UI_FillRect;
	uiInfo.uiDC.drawRect = &_UI_DrawRect;
	uiInfo.uiDC.drawSides = &_UI_DrawSides;
	uiInfo.uiDC.drawTopBottom = &_UI_DrawTopBottom;
	uiInfo.uiDC.clearScene = &trap_R_ClearScene;
	uiInfo.uiDC.addRefEntityToScene = &trap_R_AddRefEntityToScene;
	uiInfo.uiDC.renderScene = &trap_R_RenderScene;
	uiInfo.uiDC.registerFont = &trap_R_RegisterFont;
	uiInfo.uiDC.ownerDrawItem = &UI_OwnerDraw;
	uiInfo.uiDC.getValue = &UI_GetValue;
	uiInfo.uiDC.ownerDrawVisible = &UI_OwnerDrawVisible;
	uiInfo.uiDC.runScript = &UI_RunMenuScript;
	uiInfo.uiDC.getTeamColor = &UI_GetTeamColor;
	uiInfo.uiDC.setCVar = trap_Cvar_Set;
	uiInfo.uiDC.getCVarString = trap_Cvar_VariableStringBuffer;
	uiInfo.uiDC.getCVarValue = trap_Cvar_VariableValue;
	uiInfo.uiDC.drawTextWithCursor = &Text_PaintWithCursor;
	uiInfo.uiDC.setOverstrikeMode = &trap_Key_SetOverstrikeMode;
	uiInfo.uiDC.getOverstrikeMode = &trap_Key_GetOverstrikeMode;
	uiInfo.uiDC.startLocalSound = &trap_S_StartLocalSound;
	uiInfo.uiDC.ownerDrawHandleKey = &UI_OwnerDrawHandleKey;
	uiInfo.uiDC.feederCount = &UI_FeederCount;
	uiInfo.uiDC.feederItemImage = &UI_FeederItemImage;
	uiInfo.uiDC.feederItemText = &UI_FeederItemText;
	uiInfo.uiDC.feederSelection = &UI_FeederSelection;
	uiInfo.uiDC.setBinding = &trap_Key_SetBinding;
	uiInfo.uiDC.getBindingBuf = &trap_Key_GetBindingBuf;
	uiInfo.uiDC.keynumToStringBuf = &trap_Key_KeynumToStringBuf;
	uiInfo.uiDC.executeText = &trap_Cmd_ExecuteText;
	uiInfo.uiDC.Error = &Com_Error; 
	uiInfo.uiDC.Print = &Com_Printf; 
	uiInfo.uiDC.Pause = &UI_Pause;
	uiInfo.uiDC.ownerDrawWidth = &UI_OwnerDrawWidth;
	uiInfo.uiDC.registerSound = &trap_S_RegisterSound;
	uiInfo.uiDC.startBackgroundTrack = &trap_S_StartBackgroundTrack;
	uiInfo.uiDC.stopBackgroundTrack = &trap_S_StopBackgroundTrack;
	uiInfo.uiDC.playCinematic = &UI_PlayCinematic;
	uiInfo.uiDC.stopCinematic = &UI_StopCinematic;
	uiInfo.uiDC.drawCinematic = &UI_DrawCinematic;
	uiInfo.uiDC.runCinematicFrame = &UI_RunCinematicFrame;

	FUNC2(&uiInfo.uiDC);

	FUNC4();
  
	uiInfo.uiDC.cursor	= FUNC21( "menu/art/3_cursor2" );
	uiInfo.uiDC.whiteShader = FUNC21( "white" );

	FUNC0();

  uiInfo.teamCount = 0;
  uiInfo.characterCount = 0;
  uiInfo.aliasCount = 0;

#ifdef PRE_RELEASE_TADEMO
	UI_ParseTeamInfo("demoteaminfo.txt");
	UI_ParseGameInfo("demogameinfo.txt");
#else
	FUNC14("teaminfo.txt");
	FUNC12();
	FUNC13("gameinfo.txt");
	FUNC8();
#endif

	menuSet = FUNC6("ui_menuFiles");
	if (menuSet == NULL || menuSet[0] == '\0') {
		menuSet = "ui/menus.txt";
	}

#if 0
	if (uiInfo.inGameLoad) {
		UI_LoadMenus("ui/ingame.txt", qtrue);
	} else {
	}
#else 
	FUNC11(menuSet, qtrue);
	FUNC11("ui/ingame.txt", qfalse);
#endif
	
	FUNC3();

	FUNC20();
	FUNC9(uiInfo.mapList[ui_currentMap.integer].mapLoadName, uiInfo.gameTypes[ui_gameType.integer].gtEnum);

	FUNC5();
	FUNC10();

	// sets defaults for ui temp cvars
	uiInfo.effectsColor = gamecodetoui[(int)FUNC18("color1")-1];
	uiInfo.currentCrosshair = (int)FUNC18("cg_drawCrosshair") % NUM_CROSSHAIRS;
	if (uiInfo.currentCrosshair < 0) {
		uiInfo.currentCrosshair = 0;
	}
	FUNC17("ui_mousePitch", (FUNC18("m_pitch") >= 0) ? "0" : "1");

	uiInfo.serverStatus.currentServerCinematic = -1;
	uiInfo.previewMovie = -1;

	if (FUNC18("ui_TeamArenaFirstRun") == 0) {
		FUNC17("s_volume", "0.8");
		FUNC17("s_musicvolume", "0.5");
		FUNC17("ui_TeamArenaFirstRun", "1");
	}

	FUNC16(NULL, "debug_protocol", "", 0 );

	FUNC17("ui_actualNetGameType", FUNC22("%d", ui_netGameType.integer));
}