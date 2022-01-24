#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  svFlags; } ;
struct TYPE_7__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_8__ {int /*<<< orphan*/  eventParm; TYPE_1__ pos; } ;
struct TYPE_10__ {TYPE_3__ r; TYPE_2__ s; } ;
typedef  TYPE_4__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  EV_GLOBAL_TEAM_SOUND ; 
 int /*<<< orphan*/  GTS_BLUE_CAPTURE ; 
 int /*<<< orphan*/  GTS_RED_CAPTURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVF_BROADCAST ; 
 int TEAM_BLUE ; 

void FUNC2( gentity_t *ent, int team ) {
	gentity_t	*te;

	if (ent == NULL) {
		FUNC0 ("Warning:  NULL passed to Team_CaptureFlagSound\n");
		return;
	}

	te = FUNC1( ent->s.pos.trBase, EV_GLOBAL_TEAM_SOUND );
	if( team == TEAM_BLUE ) {
		te->s.eventParm = GTS_BLUE_CAPTURE;
	}
	else {
		te->s.eventParm = GTS_RED_CAPTURE;
	}
	te->r.svFlags |= SVF_BROADCAST;
}