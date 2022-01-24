#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msg ;
struct TYPE_11__ {TYPE_3__* client; } ;
typedef  TYPE_4__ gentity_t ;
struct TYPE_12__ {int /*<<< orphan*/  voteNo; int /*<<< orphan*/  voteYes; int /*<<< orphan*/  voteTime; } ;
struct TYPE_9__ {int eFlags; } ;
struct TYPE_8__ {scalar_t__ sessionTeam; } ;
struct TYPE_10__ {TYPE_2__ ps; TYPE_1__ sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_VOTE_NO ; 
 int /*<<< orphan*/  CS_VOTE_YES ; 
 int EF_VOTED ; 
 scalar_t__ TEAM_SPECTATOR ; 
 int g_entities ; 
 TYPE_6__ level ; 
 char FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5( gentity_t *ent ) {
	char		msg[64];

	if ( !level.voteTime ) {
		FUNC2( ent-g_entities, "print \"No vote in progress.\n\"" );
		return;
	}
	if ( ent->client->ps.eFlags & EF_VOTED ) {
		FUNC2( ent-g_entities, "print \"Vote already cast.\n\"" );
		return;
	}
	if ( ent->client->sess.sessionTeam == TEAM_SPECTATOR ) {
		FUNC2( ent-g_entities, "print \"Not allowed to vote as spectator.\n\"" );
		return;
	}

	FUNC2( ent-g_entities, "print \"Vote cast.\n\"" );

	ent->client->ps.eFlags |= EF_VOTED;

	FUNC1( 1, msg, sizeof( msg ) );

	if ( FUNC0( msg[0] ) == 'y' || msg[0] == '1' ) {
		level.voteYes++;
		FUNC3( CS_VOTE_YES, FUNC4("%i", level.voteYes ) );
	} else {
		level.voteNo++;
		FUNC3( CS_VOTE_NO, FUNC4("%i", level.voteNo ) );	
	}

	// a majority will be determined in CheckVote, which will also account
	// for players entering or leaving
}