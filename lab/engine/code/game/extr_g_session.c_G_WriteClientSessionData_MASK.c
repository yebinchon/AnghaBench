#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  teamLeader; int /*<<< orphan*/  losses; int /*<<< orphan*/  wins; int /*<<< orphan*/  spectatorClient; int /*<<< orphan*/  spectatorState; int /*<<< orphan*/  spectatorNum; int /*<<< orphan*/  sessionTeam; } ;
struct TYPE_6__ {TYPE_1__ sess; } ;
typedef  TYPE_2__ gclient_t ;
struct TYPE_7__ {TYPE_2__* clients; } ;

/* Variables and functions */
 TYPE_3__ level ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char*,int,...) ; 

void FUNC2( gclient_t *client ) {
	const char	*s;
	const char	*var;

	s = FUNC1("%i %i %i %i %i %i %i", 
		client->sess.sessionTeam,
		client->sess.spectatorNum,
		client->sess.spectatorState,
		client->sess.spectatorClient,
		client->sess.wins,
		client->sess.losses,
		client->sess.teamLeader
		);

	var = FUNC1( "session%i", (int)(client - level.clients) );

	FUNC0( var, s );
}