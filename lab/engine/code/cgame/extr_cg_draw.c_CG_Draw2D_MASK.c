#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ stereoFrame_t ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {scalar_t__ integer; } ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {int /*<<< orphan*/  integer; } ;
struct TYPE_16__ {scalar_t__ orderTime; scalar_t__ gametype; scalar_t__ orderPending; } ;
struct TYPE_14__ {scalar_t__ pm_type; scalar_t__* persistant; scalar_t__* stats; } ;
struct TYPE_15__ {TYPE_1__ ps; } ;
struct TYPE_13__ {scalar_t__ time; int /*<<< orphan*/  scoreBoardShowing; TYPE_2__* snap; int /*<<< orphan*/  showScores; scalar_t__ levelShot; } ;
struct TYPE_12__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ GT_TEAM ; 
 int /*<<< orphan*/  FUNC26 () ; 
 size_t PERS_TEAM ; 
 scalar_t__ PM_INTERMISSION ; 
 size_t STAT_HEALTH ; 
 scalar_t__ STEREO_CENTER ; 
 scalar_t__ TEAM_SPECTATOR ; 
 TYPE_11__ cg ; 
 TYPE_10__ cg_draw2D ; 
 TYPE_9__ cg_drawCrosshairAlways ; 
 TYPE_8__ cg_drawReducedUI ; 
 TYPE_7__ cg_drawScriptRectanglesAlways ; 
 TYPE_6__ cg_drawScriptTextAlways ; 
 TYPE_5__ cg_drawStatus ; 
 TYPE_4__ cg_paused ; 
 TYPE_3__ cgs ; 

__attribute__((used)) static void FUNC27(stereoFrame_t stereoFrame)
{
#ifdef MISSIONPACK
	if (cgs.orderPending && cg.time > cgs.orderTime) {
		CG_CheckOrderPending();
	}
#endif
	// if we are taking a levelshot for the menu, don't draw anything
	if ( cg.levelShot ) {
		return;
	}

	if ( cg_draw2D.integer == 0 || cg_drawReducedUI.integer != 0) {
		if (stereoFrame == STEREO_CENTER) {
			if (cg_drawCrosshairAlways.integer != 0) FUNC3();
			if (cg_drawReducedUI.integer != 0) FUNC18();
			if (cg_drawScriptTextAlways.integer !=0) FUNC15();
			if (cg_drawScriptRectanglesAlways.integer !=0) FUNC14();
		}
		return;
	}

	if ( cg.snap->ps.pm_type == PM_INTERMISSION ) {
		FUNC7();
		return;
	}

/*
	if (cg.cameraMode) {
		return;
	}
*/
	if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_SPECTATOR ) {
		FUNC16();

		if(stereoFrame == STEREO_CENTER)
			FUNC3();

		FUNC4();
	} else {
		// don't draw any status if dead or the scoreboard is being explicitly shown
		if ( !cg.showScores && cg.snap->ps.stats[STAT_HEALTH] > 0 ) {

#ifdef MISSIONPACK
			if ( cg_drawStatus.integer ) {
				Menu_PaintAll();
				CG_DrawTimedMenus();
			}
#else
			FUNC17();
#endif
      
			FUNC1();

#ifdef MISSIONPACK
			CG_DrawProxWarning();
#endif      
			if(stereoFrame == STEREO_CENTER)
				FUNC3();
			FUNC4();
			FUNC25();

#ifndef MISSIONPACK
			FUNC6();
#else
			//CG_DrawPersistantPowerup();
#endif
			FUNC12();
		}
	}

	if ( cgs.gametype >= GT_TEAM ) {
#ifndef MISSIONPACK
		FUNC19();
#endif
	}

	FUNC15();
	FUNC14();
	FUNC23();
	FUNC20();

	FUNC8();

#ifdef MISSIONPACK
	if (!cg_paused.integer) {
		CG_DrawUpperRight(stereoFrame);
	}
#else
	FUNC22(stereoFrame);
#endif

#ifndef MISSIONPACK
	FUNC10();
	FUNC9();
#endif

	if ( !FUNC5() ) {
		FUNC24();
	}

	// don't draw center string if scoreboard is up
	cg.scoreBoardShowing = FUNC13();
	if ( !cg.scoreBoardShowing) {
		FUNC2();
	}
}