#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ eType; int /*<<< orphan*/  eFlags; int /*<<< orphan*/  number; scalar_t__ event; } ;
struct TYPE_21__ {int /*<<< orphan*/  linked; int /*<<< orphan*/  currentOrigin; } ;
struct TYPE_23__ {scalar_t__ eventTime; int /*<<< orphan*/  classname; scalar_t__ inuse; TYPE_5__ s; scalar_t__ physicsObject; scalar_t__ neverFree; TYPE_4__ r; scalar_t__ freeAfterEvent; TYPE_3__* item; int /*<<< orphan*/  id; scalar_t__ unlinkAfterEvent; TYPE_2__* client; } ;
typedef  TYPE_6__ gentity_t ;
struct TYPE_25__ {scalar_t__ integer; } ;
struct TYPE_24__ {int previousTime; int time; int num_entities; int maxclients; int /*<<< orphan*/  framenum; scalar_t__ restarted; } ;
struct TYPE_20__ {int /*<<< orphan*/  classname; int /*<<< orphan*/  giType; } ;
struct TYPE_18__ {scalar_t__ externalEvent; } ;
struct TYPE_19__ {TYPE_1__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 scalar_t__ ET_ITEM ; 
 scalar_t__ ET_MISSILE ; 
 scalar_t__ ET_MOVER ; 
 scalar_t__ EVENT_VALID_MSEC ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int MAX_CLIENTS ; 
 int MAX_GENTITIES ; 
 int /*<<< orphan*/  TEAM_BLUE ; 
 int /*<<< orphan*/  TEAM_RED ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 TYPE_6__* g_entities ; 
 TYPE_9__ g_listEntity ; 
 TYPE_8__ level ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_6__*) ; 

void FUNC21( int levelTime ) {
	int			i;
	gentity_t	*ent;

	// if we are waiting for the level to restart, do nothing
	if ( level.restarted ) {
		return;
	}
	FUNC15();
	level.framenum++;
	level.previousTime = level.time;
	level.time = levelTime;

	// get any cvar changes
	FUNC16();

	FUNC0();
	FUNC18();
	//
	// go through all allocated objects
	//
	ent = &g_entities[0];
	for (i=0 ; i<level.num_entities ; i++, ent++) {
		if ( !ent->inuse ) {
			continue;
		}

		// clear events that are too old
		if ( level.time - ent->eventTime > EVENT_VALID_MSEC ) {
			if ( ent->s.event ) {
				ent->s.event = 0;	// &= EV_EVENT_BITS;
				if ( ent->client ) {
					ent->client->ps.externalEvent = 0;
					// predicted events should never be set to zero
					//ent->client->ps.events[0] = 0;
					//ent->client->ps.events[1] = 0;
				}
			}
			if ( ent->freeAfterEvent ) {
				// tempEntities or dropped items completely go away after their event
				FUNC8( ent );
				continue;
			} else if ( ent->unlinkAfterEvent ) {
				// items that will respawn will hide themselves after their pickup event
				ent->unlinkAfterEvent = qfalse;
				FUNC20( ent );
			}
		}

		if (ent->item) {
			FUNC17( ent->s.number, ent->id, ent->item->giType, ent->s.eFlags, ent->r.currentOrigin, ent->item->classname );
		}
		// temporary entities don't think
		if ( ent->freeAfterEvent ) {
			continue;
		}

		if ( !ent->r.linked && ent->neverFree ) {
			continue;
		}

		if ( ent->s.eType == ET_MISSILE ) {
			FUNC12( ent );
			continue;
		}

		if ( ent->s.eType == ET_ITEM || ent->physicsObject ) {
			FUNC11( ent );
			continue;
		}

		if ( ent->s.eType == ET_MOVER ) {
			FUNC13( ent );
			continue;
		}

		if ( i < MAX_CLIENTS ) {
			FUNC10( ent );
			continue;
		}

		FUNC14( ent );
	}

	// perform final fixups on the players
	ent = &g_entities[0];
	for (i=0 ; i < level.maxclients ; i++, ent++ ) {
		if ( ent->inuse ) {
			FUNC7( ent );
		}
	}

	// see if it is time to do a tournement restart
	FUNC5();

	// see if it is time to end the level
	FUNC2();

	// update to team status?
	FUNC3();

	// cancel vote if timed out
	FUNC6();

	// check team votes
	FUNC4( TEAM_RED );
	FUNC4( TEAM_BLUE );

	// for tracking changes
	FUNC1();

	if (g_listEntity.integer) {
		for (i = 0; i < MAX_GENTITIES; i++) {
			FUNC9("%4i: %s\n", i, g_entities[i].classname);
		}
		FUNC19("g_listEntity", "0");
	}
}