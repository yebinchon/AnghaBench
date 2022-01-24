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
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/  SAY_TELL ; 
 int SVF_BOT ; 
 int FUNC3 (char*) ; 
 TYPE_4__* g_entities ; 
 int /*<<< orphan*/ * gc_orders ; 
 int numgc_orders ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void FUNC8( gentity_t *ent ) {
	int			targetNum;
	gentity_t	*target;
	int			order;
	char		arg[MAX_TOKEN_CHARS];

	if ( FUNC4() != 3 ) {
		FUNC6( ent-g_entities, FUNC7( "print \"Usage: gc <player id> <order 0-%d>\n\"", numgc_orders - 1 ) );
		return;
	}

	FUNC5( 2, arg, sizeof( arg ) );
	order = FUNC3( arg );

	if ( order < 0 || order >= numgc_orders ) {
		FUNC6( ent-g_entities, FUNC7("print \"Bad order: %i\n\"", order));
		return;
	}

	FUNC5( 1, arg, sizeof( arg ) );
	targetNum = FUNC0( ent, arg, qtrue, qtrue );
	if ( targetNum == -1 ) {
		return;
	}

	target = &g_entities[targetNum];
	if ( !target->inuse || !target->client ) {
		return;
	}

	FUNC1( "tell: %s to %s: %s\n", ent->client->pers.netname, target->client->pers.netname, gc_orders[order] );
	FUNC2( ent, target, SAY_TELL, gc_orders[order] );
	// don't tell to the player self if it was already directed to this player
	// also don't send the chat back to a bot
	if ( ent != target && !(ent->r.svFlags & SVF_BOT)) {
		FUNC2( ent, ent, SAY_TELL, gc_orders[order] );
	}
}