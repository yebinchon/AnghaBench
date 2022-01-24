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
typedef  scalar_t__ qboolean ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {scalar_t__ value; } ;
struct TYPE_20__ {scalar_t__ value; } ;
struct TYPE_19__ {float value; } ;
struct TYPE_18__ {int scores1; int scores2; } ;
struct TYPE_17__ {int time; int /*<<< orphan*/  viewaxis; int /*<<< orphan*/  vieworg; int /*<<< orphan*/  areamask; } ;
struct TYPE_15__ {scalar_t__* stats; int* persistant; int /*<<< orphan*/  clientNum; } ;
struct TYPE_16__ {int snapFlags; TYPE_2__ ps; int /*<<< orphan*/  areamask; } ;
struct TYPE_14__ {scalar_t__ hModel; } ;
struct TYPE_13__ {int time; scalar_t__* infoScreenText; int renderingThirdPerson; scalar_t__ frametime; scalar_t__ oldTime; int /*<<< orphan*/  clientFrame; TYPE_4__ refdef; TYPE_3__* snap; TYPE_1__ testModelEntity; int /*<<< orphan*/  predictedPlayerState; int /*<<< orphan*/  hyperspace; int /*<<< orphan*/  zoomSensitivity; int /*<<< orphan*/  weaponSelect; scalar_t__ demoPlayback; } ;
struct TYPE_12__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 size_t PERS_TEAM ; 
 int SNAPFLAG_NOT_ACTIVE ; 
 size_t STAT_HEALTH ; 
 scalar_t__ STEREO_RIGHT ; 
 int TEAM_BLUE ; 
 int TEAM_RED ; 
 int TEAM_SPECTATOR ; 
 TYPE_11__ cg ; 
 TYPE_10__ cg_stats ; 
 TYPE_9__ cg_thirdPerson ; 
 TYPE_8__ cg_timescale ; 
 TYPE_7__ cg_timescaleFadeEnd ; 
 TYPE_6__ cg_timescaleFadeSpeed ; 
 TYPE_5__ cgs ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,scalar_t__) ; 

void FUNC27( int serverTime, stereoFrame_t stereoView, qboolean demoPlayback, qboolean skipRendering ) {
	int		inwater;
	int		team = -1;
	int		score1 = 0, score2 = 0;

	cg.time = serverTime;
	cg.demoPlayback = demoPlayback;

	// update cvars
	FUNC18();

	FUNC0();

	// if we are only updating the screen as a loading
	// pacifier, don't even try to read snapshots
	if ( cg.infoScreenText[0] != 0 ) {
		if ( !skipRendering ) {
			FUNC11();
		}
		return;
	}

	// any looped sounds will be respecified as entities
	// are added to the render list
	FUNC23(qfalse);

	// clear all the render lists
	FUNC22();

	// set up cg.snap and possibly cg.nextSnap
	FUNC17();

	// if we haven't received any snapshots yet, all
	// we can draw is the information screen
	if ( !cg.snap || ( cg.snap->snapFlags & SNAPFLAG_NOT_ACTIVE ) ) {
		if ( !skipRendering ) {
			FUNC11();
		}
		return;
	}

	// let the client system know what our weapon and zoom settings are
	FUNC25( cg.weaponSelect, cg.zoomSensitivity );

	// this counter will be bumped for every valid scene we generate
	cg.clientFrame++;

	// update cg.predictedPlayerState
	FUNC15();

	// decide on third person view
	cg.renderingThirdPerson = team != TEAM_SPECTATOR
							&& (cg_thirdPerson.integer || (cg.snap->ps.stats[STAT_HEALTH] <= 0));

	// build cg.refdef
	inwater = FUNC8();

	// Inform context of latest player state.
	team = cg.snap->ps.persistant[PERS_TEAM];
	if ( team == TEAM_RED ) {
		score1 = cgs.scores1;
		score2 = cgs.scores2;
	} else if ( team == TEAM_BLUE ) {
		score2 = cgs.scores1;
		score1 = cgs.scores2;
	}
	FUNC19( &cg.predictedPlayerState, cg.refdef.vieworg, score1, score2 );

	if ( skipRendering ) return;

	// first person blend blobs, done after AnglesToAxis
	if ( !cg.renderingThirdPerson ) {
		FUNC9();
	}

	// build the render lists
	if ( !cg.hyperspace ) {
		FUNC4();			// adter calcViewValues, so predicted player state is correct
		FUNC3();
		FUNC5 ();
		FUNC2();
	}
	FUNC7( &cg.predictedPlayerState );

	// add buffered sounds
	FUNC12();

#ifdef MISSIONPACK
	// play buffered voice chats
	CG_PlayBufferedVoiceChats();
#endif

	// finish up the rest of the refdef
	if ( cg.testModelEntity.hModel ) {
		FUNC6();
	}
	cg.refdef.time = cg.time;
	FUNC20( cg.refdef.areamask, cg.snap->areamask, sizeof( cg.refdef.areamask ) );

	// warning sounds when powerup is wearing off
	FUNC14();

	// update audio positions
	FUNC24( cg.snap->ps.clientNum, cg.refdef.vieworg, cg.refdef.viewaxis, inwater );

	// make sure the lagometerSample and frame timing isn't done twice when in stereo
	if ( stereoView != STEREO_RIGHT ) {
		cg.frametime = cg.time - cg.oldTime;
		if ( cg.frametime < 0 ) {
			cg.frametime = 0;
		}
		cg.oldTime = cg.time;
		FUNC1();
	}
	if (cg_timescale.value != cg_timescaleFadeEnd.value) {
		if (cg_timescale.value < cg_timescaleFadeEnd.value) {
			cg_timescale.value += cg_timescaleFadeSpeed.value * ((float)cg.frametime) / 1000;
			if (cg_timescale.value > cg_timescaleFadeEnd.value)
				cg_timescale.value = cg_timescaleFadeEnd.value;
		}
		else {
			cg_timescale.value -= cg_timescaleFadeSpeed.value * ((float)cg.frametime) / 1000;
			if (cg_timescale.value < cg_timescaleFadeEnd.value)
				cg_timescale.value = cg_timescaleFadeEnd.value;
		}
		if (cg_timescaleFadeSpeed.value) {
			FUNC21("timescale", FUNC26("%f", cg_timescale.value));
		}
	}

	// actually issue the rendering calls
	FUNC10( stereoView );

	if ( cg_stats.integer ) {
		FUNC16( "cg.clientFrame:%i\n", cg.clientFrame );
	}
}