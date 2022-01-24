#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  teamname ;
typedef  int /*<<< orphan*/  orientation_t ;
struct TYPE_12__ {scalar_t__ team; char* modelName; char* skinName; char* headModelName; char* headSkinName; void* deferred; void** sounds; void* newAnims; scalar_t__ torsoModel; } ;
typedef  TYPE_2__ clientInfo_t ;
struct TYPE_17__ {int /*<<< orphan*/  string; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_11__ {int clientNum; scalar_t__ eType; } ;
struct TYPE_15__ {TYPE_1__ currentState; } ;
struct TYPE_14__ {int /*<<< orphan*/  string; } ;
struct TYPE_13__ {scalar_t__ gametype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  DEFAULT_BLUETEAM_NAME ; 
 char* DEFAULT_MODEL ; 
 int /*<<< orphan*/  DEFAULT_REDTEAM_NAME ; 
 char* DEFAULT_TEAM_HEAD ; 
 char* DEFAULT_TEAM_MODEL ; 
 scalar_t__ ET_PLAYER ; 
 scalar_t__ GT_TEAM ; 
 int MAX_CUSTOM_SOUNDS ; 
 int MAX_GENTITIES ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TEAM_BLUE ; 
 TYPE_7__ cg_blueTeamName ; 
 TYPE_6__ cg_buildScript ; 
 char** cg_customSoundNames ; 
 TYPE_5__* cg_entities ; 
 TYPE_4__ cg_redTeamName ; 
 TYPE_3__ cgs ; 
 void* qfalse ; 
 void* qtrue ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,char const*) ; 

__attribute__((used)) static void FUNC8( int clientNum, clientInfo_t *ci ) {
	const char	*dir, *fallback;
	int			i, modelloaded;
	const char	*s;
	char		teamname[MAX_QPATH];

	teamname[0] = 0;
#ifdef MISSIONPACK
	if( cgs.gametype >= GT_TEAM) {
		if( ci->team == TEAM_BLUE ) {
			Q_strncpyz(teamname, cg_blueTeamName.string, sizeof(teamname) );
		} else {
			Q_strncpyz(teamname, cg_redTeamName.string, sizeof(teamname) );
		}
	}
	if( teamname[0] ) {
		strcat( teamname, "/" );
	}
#endif
	modelloaded = qtrue;
	if ( !FUNC1( ci, ci->modelName, ci->skinName, ci->headModelName, ci->headSkinName, teamname ) ) {
		if ( cg_buildScript.integer ) {
			FUNC0( "CG_RegisterClientModelname( %s, %s, %s, %s %s ) failed", ci->modelName, ci->skinName, ci->headModelName, ci->headSkinName, teamname );
		}

		// fall back to default team name
		if( cgs.gametype >= GT_TEAM) {
			// keep skin name
			if( ci->team == TEAM_BLUE ) {
				FUNC3(teamname, DEFAULT_BLUETEAM_NAME, sizeof(teamname) );
			} else {
				FUNC3(teamname, DEFAULT_REDTEAM_NAME, sizeof(teamname) );
			}
			if ( !FUNC1( ci, DEFAULT_TEAM_MODEL, ci->skinName, DEFAULT_TEAM_HEAD, ci->skinName, teamname ) ) {
				FUNC0( "DEFAULT_TEAM_MODEL / skin (%s/%s) failed to register", DEFAULT_TEAM_MODEL, ci->skinName );
			}
		} else {
			if ( !FUNC1( ci, DEFAULT_MODEL, "default", DEFAULT_MODEL, "default", teamname ) ) {
				FUNC0( "DEFAULT_MODEL (%s) failed to register", DEFAULT_MODEL );
			}
		}
		modelloaded = qfalse;
	}

	ci->newAnims = qfalse;
	if ( ci->torsoModel ) {
		orientation_t tag;
		// if the torso model has the "tag_flag"
		if ( FUNC5( &tag, ci->torsoModel, 0, 0, 1, "tag_flag" ) ) {
			ci->newAnims = qtrue;
		}
	}

	// sounds
	dir = ci->modelName;
	fallback = (cgs.gametype >= GT_TEAM) ? DEFAULT_TEAM_MODEL : DEFAULT_MODEL;

	for ( i = 0 ; i < MAX_CUSTOM_SOUNDS ; i++ ) {
		s = cg_customSoundNames[i];
		if ( !s ) {
			break;
		}
		ci->sounds[i] = 0;
		// if the model didn't load use the sounds of the default model
		if (modelloaded) {
			ci->sounds[i] = FUNC6( FUNC7("sound/player/%s/%s", dir, s + 1), qfalse );
		}
		if ( !ci->sounds[i] ) {
			ci->sounds[i] = FUNC6( FUNC7("sound/player/%s/%s", fallback, s + 1), qfalse );
		}
	}

	ci->deferred = qfalse;

	// reset any existing players and bodies, because they might be in bad
	// frames for this new model
	for ( i = 0 ; i < MAX_GENTITIES ; i++ ) {
		if ( cg_entities[i].currentState.clientNum == clientNum
			&& cg_entities[i].currentState.eType == ET_PLAYER ) {
			FUNC2( &cg_entities[i] );
		}
	}
}