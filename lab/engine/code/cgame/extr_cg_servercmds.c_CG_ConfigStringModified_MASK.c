#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* intermissionStarted; } ;
struct TYPE_4__ {int /*<<< orphan*/  voteNow; } ;
struct TYPE_5__ {scalar_t__ gametype; char redflag; char blueflag; char flagStatus; int /*<<< orphan*/ * gameSounds; int /*<<< orphan*/ * gameModels; TYPE_1__ media; int /*<<< orphan*/ * teamVoteString; void** teamVoteModified; void** teamVoteNo; void** teamVoteYes; void** teamVoteTime; int /*<<< orphan*/  voteString; void* voteModified; void* voteNo; void* voteYes; void* voteTime; void* levelStartTime; void* scores2; void* scores1; int /*<<< orphan*/  gameState; } ;

/* Variables and functions */
 char const* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  CHAN_ANNOUNCER ; 
 int CS_FLAGSTATUS ; 
 int CS_INTERMISSION ; 
 int CS_LEVEL_START_TIME ; 
 int CS_MODELS ; 
 int CS_MUSIC ; 
 int CS_PLAYERS ; 
 int CS_SCORES1 ; 
 int CS_SCORES2 ; 
 int CS_SERVERINFO ; 
 int CS_SHADERSTATE ; 
 int CS_SOUNDS ; 
 int CS_TEAMVOTE_NO ; 
 int CS_TEAMVOTE_STRING ; 
 int CS_TEAMVOTE_TIME ; 
 int CS_TEAMVOTE_YES ; 
 int CS_VOTE_NO ; 
 int CS_VOTE_STRING ; 
 int CS_VOTE_TIME ; 
 int CS_VOTE_YES ; 
 int CS_WARMUP ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 int MAX_CLIENTS ; 
 int MAX_MODELS ; 
 int MAX_SOUNDS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 
 void* FUNC9 (char const*) ; 
 TYPE_3__ cg ; 
 TYPE_2__ cgs ; 
 int /*<<< orphan*/  qfalse ; 
 void* qtrue ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14( void ) {
	const char	*str;
	int		num;

	num = FUNC9( FUNC0( 1 ) );

	// get the gamestate from the client system, which will have the
	// new configstring already integrated
	FUNC10( &cgs.gameState );

	// look up the individual string that was modified
	str = FUNC2( num );

	// do something with it if necessary
	if ( num == CS_MUSIC ) {
		FUNC7();
	} else if ( num == CS_SERVERINFO ) {
		FUNC4();
	} else if ( num == CS_WARMUP ) {
		FUNC5();
	} else if ( num == CS_SCORES1 ) {
		cgs.scores1 = FUNC9( str );
	} else if ( num == CS_SCORES2 ) {
		cgs.scores2 = FUNC9( str );
	} else if ( num == CS_LEVEL_START_TIME ) {
		cgs.levelStartTime = FUNC9( str );
	} else if ( num == CS_VOTE_TIME ) {
		cgs.voteTime = FUNC9( str );
		cgs.voteModified = qtrue;
	} else if ( num == CS_VOTE_YES ) {
		cgs.voteYes = FUNC9( str );
		cgs.voteModified = qtrue;
	} else if ( num == CS_VOTE_NO ) {
		cgs.voteNo = FUNC9( str );
		cgs.voteModified = qtrue;
	} else if ( num == CS_VOTE_STRING ) {
		FUNC8( cgs.voteString, str, sizeof( cgs.voteString ) );
#ifdef MISSIONPACK
		trap_S_StartLocalSound( cgs.media.voteNow, CHAN_ANNOUNCER );
#endif //MISSIONPACK
	} else if ( num >= CS_TEAMVOTE_TIME && num <= CS_TEAMVOTE_TIME + 1) {
		cgs.teamVoteTime[num-CS_TEAMVOTE_TIME] = FUNC9( str );
		cgs.teamVoteModified[num-CS_TEAMVOTE_TIME] = qtrue;
	} else if ( num >= CS_TEAMVOTE_YES && num <= CS_TEAMVOTE_YES + 1) {
		cgs.teamVoteYes[num-CS_TEAMVOTE_YES] = FUNC9( str );
		cgs.teamVoteModified[num-CS_TEAMVOTE_YES] = qtrue;
	} else if ( num >= CS_TEAMVOTE_NO && num <= CS_TEAMVOTE_NO + 1) {
		cgs.teamVoteNo[num-CS_TEAMVOTE_NO] = FUNC9( str );
		cgs.teamVoteModified[num-CS_TEAMVOTE_NO] = qtrue;
	} else if ( num >= CS_TEAMVOTE_STRING && num <= CS_TEAMVOTE_STRING + 1) {
		FUNC8( cgs.teamVoteString[num-CS_TEAMVOTE_STRING], str, sizeof( cgs.teamVoteString[0] ) );
#ifdef MISSIONPACK
		trap_S_StartLocalSound( cgs.media.voteNow, CHAN_ANNOUNCER );
#endif
	} else if ( num == CS_INTERMISSION ) {
		cg.intermissionStarted = FUNC9( str );
	} else if ( num >= CS_MODELS && num < CS_MODELS+MAX_MODELS ) {
		cgs.gameModels[ num-CS_MODELS ] = FUNC11( str );
	} else if ( num >= CS_SOUNDS && num < CS_SOUNDS+MAX_SOUNDS ) {
		if ( str[0] != '*' ) {	// player specific sounds don't register here
			cgs.gameSounds[ num-CS_SOUNDS] = FUNC12( str, qfalse );
		}
	} else if ( num >= CS_PLAYERS && num < CS_PLAYERS+MAX_CLIENTS ) {
		FUNC3( num - CS_PLAYERS );
		FUNC1();
	} else if ( num == CS_FLAGSTATUS ) {
		if( cgs.gametype == GT_CTF ) {
			// format is rb where its red/blue, 0 is at base, 1 is taken, 2 is dropped
			cgs.redflag = str[0] - '0';
			cgs.blueflag = str[1] - '0';
		}
#ifdef MISSIONPACK
		else if( cgs.gametype == GT_1FCTF ) {
			cgs.flagStatus = str[0] - '0';
		}
#endif
	}
	else if ( num == CS_SHADERSTATE ) {
		FUNC6();
	}
		
}