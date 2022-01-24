#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usercmd_t ;
struct TYPE_8__ {int number; } ;
struct TYPE_9__ {TYPE_1__ s; } ;
typedef  TYPE_2__ sharedEntity_t ;
struct TYPE_10__ {int deltaMessage; int /*<<< orphan*/  lastUsercmd; scalar_t__ lastSnapshotTime; TYPE_2__* gentity; int /*<<< orphan*/  state; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ client_t ;
struct TYPE_11__ {TYPE_3__* clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GAME_CLIENT_BEGIN ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  gvm ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char,int) ; 
 TYPE_4__ svs ; 

void FUNC6( client_t *client, usercmd_t *cmd ) {
	int		clientNum;
	sharedEntity_t *ent;

	FUNC0( "Going from CS_PRIMED to CS_ACTIVE for %s\n", client->name );
	client->state = CS_ACTIVE;

	// resend all configstrings using the cs commands since these are
	// no longer sent when the client is CS_PRIMED
	FUNC2( client );

	// set up the entity for the client
	clientNum = client - svs.clients;
	ent = FUNC1( clientNum );
	ent->s.number = clientNum;
	client->gentity = ent;

	client->deltaMessage = -1;
	client->lastSnapshotTime = 0;	// generate a snapshot immediately

	if(cmd)
		FUNC4(&client->lastUsercmd, cmd, sizeof(client->lastUsercmd));
	else
		FUNC5(&client->lastUsercmd, '\0', sizeof(client->lastUsercmd));

	// call the game begin function
	FUNC3( gvm, GAME_CLIENT_BEGIN, client - svs.clients );
}