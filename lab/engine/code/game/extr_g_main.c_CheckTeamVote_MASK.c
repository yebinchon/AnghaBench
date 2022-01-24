#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* teamVoteTime; scalar_t__ time; int* teamVoteYes; int* numteamVotingClients; int* teamVoteNo; scalar_t__* teamVoteString; } ;

/* Variables and functions */
 scalar_t__ CS_TEAMVOTE_TIME ; 
 int /*<<< orphan*/  EXEC_APPEND ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int TEAM_BLUE ; 
 int TEAM_RED ; 
 scalar_t__ VOTE_TIME ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 

void FUNC7( int team ) {
	int cs_offset;

	if ( team == TEAM_RED )
		cs_offset = 0;
	else if ( team == TEAM_BLUE )
		cs_offset = 1;
	else
		return;

	if ( !level.teamVoteTime[cs_offset] ) {
		return;
	}
	if ( level.time - level.teamVoteTime[cs_offset] >= VOTE_TIME ) {
		FUNC4( -1, "print \"Team vote failed.\n\"" );
	} else {
		if ( level.teamVoteYes[cs_offset] > level.numteamVotingClients[cs_offset]/2 ) {
			// execute the command, then remove the vote
			FUNC4( -1, "print \"Team vote passed.\n\"" );
			//
			if ( !FUNC0( "leader", level.teamVoteString[cs_offset], 6) ) {
				//set the team leader
				FUNC1(team, FUNC2(level.teamVoteString[cs_offset] + 7));
			}
			else {
				FUNC3( EXEC_APPEND, FUNC6("%s\n", level.teamVoteString[cs_offset] ) );
			}
		} else if ( level.teamVoteNo[cs_offset] >= level.numteamVotingClients[cs_offset]/2 ) {
			// same behavior as a timeout
			FUNC4( -1, "print \"Team vote failed.\n\"" );
		} else {
			// still waiting for a majority
			return;
		}
	}
	level.teamVoteTime[cs_offset] = 0;
	FUNC5( CS_TEAMVOTE_TIME + cs_offset, "" );

}