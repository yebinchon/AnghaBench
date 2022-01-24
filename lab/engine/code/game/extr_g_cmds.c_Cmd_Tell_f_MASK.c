#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int svFlags; } ;
struct TYPE_13__ {TYPE_3__ r; TYPE_2__* client; int /*<<< orphan*/  inuse; } ;
typedef  TYPE_4__ gentity_t ;
typedef  int /*<<< orphan*/  arg ;
struct TYPE_10__ {int /*<<< orphan*/  netname; } ;
struct TYPE_11__ {TYPE_1__ pers; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/  SAY_TELL ; 
 int SVF_BOT ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_4__* g_entities ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

__attribute__((used)) static void FUNC8( gentity_t *ent ) {
	int			targetNum;
	gentity_t	*target;
	char		*p;
	char		arg[MAX_TOKEN_CHARS];

	if ( FUNC5 () < 3 ) {
		FUNC7( ent-g_entities, "print \"Usage: tell <player id> <message>\n\"" );
		return;
	}

	FUNC6( 1, arg, sizeof( arg ) );
	targetNum = FUNC0( ent, arg, qtrue, qtrue );
	if ( targetNum == -1 ) {
		return;
	}

	target = &g_entities[targetNum];
	if ( !target->inuse || !target->client ) {
		return;
	}

	p = FUNC1( 2 );

	FUNC4( p );

	FUNC2( "tell: %s to %s: %s\n", ent->client->pers.netname, target->client->pers.netname, p );
	FUNC3( ent, target, SAY_TELL, p );
	// don't tell to the player self if it was already directed to this player
	// also don't send the chat back to a bot
	if ( ent != target && !(ent->r.svFlags & SVF_BOT)) {
		FUNC3( ent, ent, SAY_TELL, p );
	}
}