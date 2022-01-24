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
struct TYPE_18__ {scalar_t__ client; } ;
struct TYPE_10__ {scalar_t__ pm_type; } ;
struct TYPE_17__ {int deferredPlayerLoading; scalar_t__* teamScores; int numScores; TYPE_9__* scores; TYPE_3__* snap; scalar_t__* killerName; int /*<<< orphan*/  scoreFadeTime; TYPE_1__ predictedPlayerState; scalar_t__ showScores; scalar_t__ warmup; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_13__ {int /*<<< orphan*/  scoreboardName; int /*<<< orphan*/  scoreboardTime; int /*<<< orphan*/  scoreboardPing; int /*<<< orphan*/  scoreboardScore; } ;
struct TYPE_14__ {scalar_t__ gametype; TYPE_4__ media; } ;
struct TYPE_11__ {scalar_t__* persistant; scalar_t__ clientNum; } ;
struct TYPE_12__ {TYPE_2__ ps; } ;

/* Variables and functions */
 scalar_t__ BIGCHAR_HEIGHT ; 
 int BIGCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*,float) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_9__*,float*,float,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,float,scalar_t__) ; 
 float* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (int,scalar_t__,float,int,int) ; 
 int /*<<< orphan*/  FADE_TIME ; 
 scalar_t__ GT_SINGLE_PLAYER ; 
 scalar_t__ GT_TEAM ; 
 size_t PERS_RANK ; 
 size_t PERS_SCORE ; 
 size_t PERS_TEAM ; 
 scalar_t__ PM_DEAD ; 
 scalar_t__ PM_INTERMISSION ; 
 int SB_HEADER ; 
 int SB_INTER_HEIGHT ; 
 int SB_MAXCLIENTS_INTER ; 
 int SB_MAXCLIENTS_NORMAL ; 
 scalar_t__ SB_NAME_X ; 
 int SB_NORMAL_HEIGHT ; 
 scalar_t__ SB_PING_X ; 
 int SB_RATING_WIDTH ; 
 scalar_t__ SB_SCORE_X ; 
 scalar_t__ SB_TIME_X ; 
 int SB_TOP ; 
 int SCREEN_WIDTH ; 
 scalar_t__ TEAM_BLUE ; 
 scalar_t__ TEAM_FREE ; 
 scalar_t__ TEAM_RED ; 
 scalar_t__ TEAM_SPECTATOR ; 
 TYPE_8__ cg ; 
 TYPE_7__ cg_paused ; 
 TYPE_6__ cg_showScoreboard ; 
 TYPE_5__ cgs ; 
 float* colorWhite ; 
 int /*<<< orphan*/  localClient ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 char* FUNC9 (char*,scalar_t__,...) ; 

qboolean FUNC10( void ) {
	int		x, y, w, i, n1, n2;
	float	fade;
	float	*fadeColor;
	char	*s;
	int maxClients;
	int lineHeight;
	int topBorderSize, bottomBorderSize;

	// don't draw amuthing if the menu or console is up
	if ( cg_paused.integer ) {
		cg.deferredPlayerLoading = 0;
		return qfalse;
	}

	if ( cg_showScoreboard.integer == 0 ) {
		return qfalse;
	}

	if ( cgs.gametype == GT_SINGLE_PLAYER && cg.predictedPlayerState.pm_type == PM_INTERMISSION ) {
		cg.deferredPlayerLoading = 0;
		return qfalse;
	}

	// don't draw scoreboard during death while warmup up
	if ( cg.warmup && !cg.showScores ) {
		return qfalse;
	}

	if ( cg.showScores || cg.predictedPlayerState.pm_type == PM_DEAD ||
		 cg.predictedPlayerState.pm_type == PM_INTERMISSION ) {
		fade = 1.0;
		fadeColor = colorWhite;
	} else {
		fadeColor = FUNC5( cg.scoreFadeTime, FADE_TIME );
		
		if ( !fadeColor ) {
			// next time scoreboard comes up, don't print killer
			cg.deferredPlayerLoading = 0;
			cg.killerName[0] = 0;
			return qfalse;
		}
		fade = *fadeColor;
	}


	// fragged by ... line
	if ( cg.killerName[0] ) {
		s = FUNC9("Tagged by %s", *cg.killerName );
		w = FUNC3( s ) * BIGCHAR_WIDTH;
		x = ( SCREEN_WIDTH - w ) / 2;
		y = 40;
		FUNC0( x, y, s, fade );
	}

	// current rank
	if ( cgs.gametype < GT_TEAM) {
		if (cg.snap->ps.persistant[PERS_TEAM] != TEAM_SPECTATOR ) {
			s = FUNC9("%s place with %i",
				FUNC7( cg.snap->ps.persistant[PERS_RANK] + 1 ),
				cg.snap->ps.persistant[PERS_SCORE] );
			w = FUNC3( s ) * BIGCHAR_WIDTH;
			x = ( SCREEN_WIDTH - w ) / 2;
			y = 60;
			FUNC0( x, y, s, fade );
		}
	} else {
		if ( cg.teamScores[0] == cg.teamScores[1] ) {
			s = FUNC9("Teams are tied at %i", cg.teamScores[0] );
		} else if ( cg.teamScores[0] >= cg.teamScores[1] ) {
			s = FUNC9("Red leads %i to %i",cg.teamScores[0], cg.teamScores[1] );
		} else {
			s = FUNC9("Blue leads %i to %i",cg.teamScores[1], cg.teamScores[0] );
		}

		w = FUNC3( s ) * BIGCHAR_WIDTH;
		x = ( SCREEN_WIDTH - w ) / 2;
		y = 60;
		FUNC0( x, y, s, fade );
	}

	// scoreboard
	y = SB_HEADER;

	FUNC2( SB_SCORE_X + (SB_RATING_WIDTH / 2), y, 64, 32, cgs.media.scoreboardScore );
	FUNC2( SB_PING_X - (SB_RATING_WIDTH / 2), y, 64, 32, cgs.media.scoreboardPing );
	FUNC2( SB_TIME_X - (SB_RATING_WIDTH / 2), y, 64, 32, cgs.media.scoreboardTime );
	FUNC2( SB_NAME_X - (SB_RATING_WIDTH / 2), y, 64, 32, cgs.media.scoreboardName );

	y = SB_TOP;

	// If there are more than SB_MAXCLIENTS_NORMAL, use the interleaved scores
	if ( cg.numScores > SB_MAXCLIENTS_NORMAL ) {
		maxClients = SB_MAXCLIENTS_INTER;
		lineHeight = SB_INTER_HEIGHT;
		topBorderSize = 8;
		bottomBorderSize = 16;
	} else {
		maxClients = SB_MAXCLIENTS_NORMAL;
		lineHeight = SB_NORMAL_HEIGHT;
		topBorderSize = 16;
		bottomBorderSize = 16;
	}

	localClient = qfalse;

	if ( cgs.gametype >= GT_TEAM ) {
		//
		// teamplay scoreboard
		//
		y += lineHeight/2;

		if ( cg.teamScores[0] >= cg.teamScores[1] ) {
			n1 = FUNC8( y, TEAM_RED, fade, maxClients, lineHeight );
			FUNC4( 0, y - topBorderSize, 640, n1 * lineHeight + bottomBorderSize, 0.33f, TEAM_RED );
			y += (n1 * lineHeight) + BIGCHAR_HEIGHT;
			maxClients -= n1;
			n2 = FUNC8( y, TEAM_BLUE, fade, maxClients, lineHeight );
			FUNC4( 0, y - topBorderSize, 640, n2 * lineHeight + bottomBorderSize, 0.33f, TEAM_BLUE );
			y += (n2 * lineHeight) + BIGCHAR_HEIGHT;
			maxClients -= n2;
		} else {
			n1 = FUNC8( y, TEAM_BLUE, fade, maxClients, lineHeight );
			FUNC4( 0, y - topBorderSize, 640, n1 * lineHeight + bottomBorderSize, 0.33f, TEAM_BLUE );
			y += (n1 * lineHeight) + BIGCHAR_HEIGHT;
			maxClients -= n1;
			n2 = FUNC8( y, TEAM_RED, fade, maxClients, lineHeight );
			FUNC4( 0, y - topBorderSize, 640, n2 * lineHeight + bottomBorderSize, 0.33f, TEAM_RED );
			y += (n2 * lineHeight) + BIGCHAR_HEIGHT;
			maxClients -= n2;
		}
		n1 = FUNC8( y, TEAM_SPECTATOR, fade, maxClients, lineHeight );
		y += (n1 * lineHeight) + BIGCHAR_HEIGHT;

	} else {
		//
		// free for all scoreboard
		//
		n1 = FUNC8( y, TEAM_FREE, fade, maxClients, lineHeight );
		y += (n1 * lineHeight) + BIGCHAR_HEIGHT;
		n2 = FUNC8( y, TEAM_SPECTATOR, fade, maxClients - n1, lineHeight );
		y += (n2 * lineHeight) + BIGCHAR_HEIGHT;
	}

	if (!localClient) {
		// draw local client at the bottom
		for ( i = 0 ; i < cg.numScores ; i++ ) {
			if ( cg.scores[i].client == cg.snap->ps.clientNum ) {
				FUNC1( y, &cg.scores[i], fadeColor, fade, lineHeight == SB_NORMAL_HEIGHT );
				break;
			}
		}
	}

	// load any models that have been deferred
	if ( ++cg.deferredPlayerLoading > 10 ) {
		FUNC6();
	}

	return qtrue;
}