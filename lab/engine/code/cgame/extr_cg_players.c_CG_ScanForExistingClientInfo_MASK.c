#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_6__ {scalar_t__ team; scalar_t__ deferred; int /*<<< orphan*/  redTeam; int /*<<< orphan*/  blueTeam; int /*<<< orphan*/  headSkinName; int /*<<< orphan*/  headModelName; int /*<<< orphan*/  skinName; int /*<<< orphan*/  modelName; int /*<<< orphan*/  infoValid; } ;
typedef  TYPE_1__ clientInfo_t ;
struct TYPE_7__ {int maxclients; scalar_t__ gametype; TYPE_1__* clientinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ GT_TEAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ cgs ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 

__attribute__((used)) static qboolean FUNC2( clientInfo_t *ci ) {
	int		i;
	clientInfo_t	*match;

	for ( i = 0 ; i < cgs.maxclients ; i++ ) {
		match = &cgs.clientinfo[ i ];
		if ( !match->infoValid ) {
			continue;
		}
		if ( match->deferred ) {
			continue;
		}
		if ( !FUNC1( ci->modelName, match->modelName )
			&& !FUNC1( ci->skinName, match->skinName )
			&& !FUNC1( ci->headModelName, match->headModelName )
			&& !FUNC1( ci->headSkinName, match->headSkinName ) 
			&& !FUNC1( ci->blueTeam, match->blueTeam ) 
			&& !FUNC1( ci->redTeam, match->redTeam )
			&& (cgs.gametype < GT_TEAM || ci->team == match->team) ) {
			// this clientinfo is identical, so use its handles

			ci->deferred = qfalse;

			FUNC0( match, ci );

			return qtrue;
		}
	}

	// nothing matches, so defer the load
	return qfalse;
}