#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stereoFrame_t ;
typedef  int /*<<< orphan*/  renderOrigin_t ;
typedef  int qboolean ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {int state; } ;
struct TYPE_8__ {int vidWidth; int vidHeight; } ;
struct TYPE_10__ {int /*<<< orphan*/  realtime; int /*<<< orphan*/  whiteShader; TYPE_1__ glconfig; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* SetColor ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* DrawStretchPic ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* BeginFrame ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  CA_ACTIVE 135 
#define  CA_CHALLENGING 134 
#define  CA_CINEMATIC 133 
#define  CA_CONNECTED 132 
#define  CA_CONNECTING 131 
#define  CA_DISCONNECTED 130 
#define  CA_LOADING 129 
#define  CA_PRIMED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int KEYCATCH_UI ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  UIMENU_MAIN ; 
 int /*<<< orphan*/  UI_DRAW_CONNECT_SCREEN ; 
 int /*<<< orphan*/  UI_IS_FULLSCREEN ; 
 int /*<<< orphan*/  UI_REFRESH ; 
 int /*<<< orphan*/  UI_SET_ACTIVE_MENU ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 TYPE_7__* cl_debugMove ; 
 TYPE_6__* cl_debuggraph ; 
 TYPE_5__* cl_timegraph ; 
 TYPE_4__ clc ; 
 TYPE_3__ cls ; 
 int /*<<< orphan*/ ** g_color_table ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__ re ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ uivm ; 

void FUNC14( stereoFrame_t stereoFrame, renderOrigin_t renderOrigin, qboolean skipRendering ) {
	qboolean uiFullscreen;

	// Many skip rendering calls below are not needed for performance
	// but to match any BeginFrame skips
	if ( !skipRendering ) {
		re.BeginFrame( stereoFrame, renderOrigin );
	}


	uiFullscreen = (uivm && FUNC9( uivm, UI_IS_FULLSCREEN ));

	// wide aspect ratio screens need to have the sides cleared
	// unless they are displaying game renderings
	if ( uiFullscreen || clc.state < CA_LOADING ) {
		if ( cls.glconfig.vidWidth * 480 > cls.glconfig.vidHeight * 640 ) {
			re.SetColor( g_color_table[0] );
			re.DrawStretchPic( 0, 0, cls.glconfig.vidWidth, cls.glconfig.vidHeight, 0, 0, 0, 0, cls.whiteShader );
			re.SetColor( NULL );
		}
	}

	// if the menu is going to cover the entire screen, we
	// don't need to render anything under it
	if ( uivm && !uiFullscreen ) {
		switch( clc.state ) {
		default:
			FUNC1( ERR_FATAL, "SCR_DrawScreenField: bad clc.state" );
			break;
		case CA_CINEMATIC:
			if ( !skipRendering ) {
				FUNC4();
			}
			break;
		case CA_DISCONNECTED:
			if ( !skipRendering ) {
				// force menu up
				FUNC8();
				FUNC9( uivm, UI_SET_ACTIVE_MENU, UIMENU_MAIN );
			}
			break;
		case CA_CONNECTING:
		case CA_CHALLENGING:
		case CA_CONNECTED:
			if ( !skipRendering ) {
				// connecting clients will only show the connection dialog
				// refresh to update the time
				FUNC9( uivm, UI_REFRESH, cls.realtime );
				FUNC9( uivm, UI_DRAW_CONNECT_SCREEN, qfalse );
			}
			break;
		case CA_LOADING:
		case CA_PRIMED:
			// draw the game information screen and loading progress
			FUNC0(stereoFrame, skipRendering);

			if ( !skipRendering ) {
				// also draw the connection information, so it doesn't
				// flash away too briefly on local or lan games
				// refresh to update the time
				FUNC9( uivm, UI_REFRESH, cls.realtime );
				FUNC9( uivm, UI_DRAW_CONNECT_SCREEN, qtrue );
			}
			break;
		case CA_ACTIVE:
			// always supply STEREO_CENTER as vieworg offset is now done by the engine.
			FUNC0(stereoFrame, skipRendering);
			if ( !skipRendering ) {
				FUNC6();
#ifdef USE_VOIP
				SCR_DrawVoipMeter();
#endif
			}
			break;
		}
	}

	if ( skipRendering ) return;

	// the menu draws next
	if ( FUNC3( ) & KEYCATCH_UI && uivm ) {
		FUNC9( uivm, UI_REFRESH, cls.realtime );
	}

	// console draws next
	FUNC2 ();

	// debug graph can be drawn on top of anything
	if ( cl_debuggraph->integer || cl_timegraph->integer || cl_debugMove->integer ) {
		FUNC5 ();
	}
}