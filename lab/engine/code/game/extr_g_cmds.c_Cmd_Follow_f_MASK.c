#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* client; } ;
typedef  TYPE_3__ gentity_t ;
typedef  int /*<<< orphan*/  arg ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {TYPE_2__* clients; } ;
struct TYPE_10__ {scalar_t__ spectatorState; scalar_t__ sessionTeam; int spectatorClient; int /*<<< orphan*/  losses; } ;
struct TYPE_11__ {TYPE_1__ sess; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ GT_TOURNAMENT ; 
 int MAX_TOKEN_CHARS ; 
 scalar_t__ SPECTATOR_FOLLOW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ TEAM_FREE ; 
 scalar_t__ TEAM_SPECTATOR ; 
 TYPE_5__ g_gametype ; 
 TYPE_4__ level ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

void FUNC5( gentity_t *ent ) {
	int		i;
	char	arg[MAX_TOKEN_CHARS];

	if ( FUNC3() != 2 ) {
		if ( ent->client->sess.spectatorState == SPECTATOR_FOLLOW ) {
			FUNC2( ent );
		}
		return;
	}

	FUNC4( 1, arg, sizeof( arg ) );
	i = FUNC0( ent, arg, qtrue, qtrue );
	if ( i == -1 ) {
		return;
	}

	// can't follow self
	if ( &level.clients[ i ] == ent->client ) {
		return;
	}

	// can't follow another spectator
	if ( level.clients[ i ].sess.sessionTeam == TEAM_SPECTATOR ) {
		return;
	}

	// if they are playing a tournement game, count as a loss
	if ( (g_gametype.integer == GT_TOURNAMENT )
		&& ent->client->sess.sessionTeam == TEAM_FREE ) {
		ent->client->sess.losses++;
	}

	// first set them to spectator
	if ( ent->client->sess.sessionTeam != TEAM_SPECTATOR ) {
		FUNC1( ent, "spectator" );
	}

	ent->client->sess.spectatorState = SPECTATOR_FOLLOW;
	ent->client->sess.spectatorClient = i;
}