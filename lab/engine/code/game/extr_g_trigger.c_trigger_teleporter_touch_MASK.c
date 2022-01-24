#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trace_t ;
struct TYPE_13__ {int /*<<< orphan*/  angles; int /*<<< orphan*/  origin; } ;
struct TYPE_14__ {int spawnflags; TYPE_3__ s; TYPE_2__* client; int /*<<< orphan*/  target; int /*<<< orphan*/  id; } ;
typedef  TYPE_4__ gentity_t ;
struct TYPE_15__ {scalar_t__ pm_type; } ;
struct TYPE_11__ {scalar_t__ sessionTeam; } ;
struct TYPE_12__ {TYPE_7__ ps; TYPE_1__ sess; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ PM_DEAD ; 
 scalar_t__ TEAM_SPECTATOR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 

void FUNC5 (gentity_t *self, gentity_t *other, trace_t *trace ) {
	gentity_t	*dest;

	if ( !other->client ) {
		return;
	}
	if ( other->client->ps.pm_type == PM_DEAD ) {
		return;
	}
	// Spectators only?
	if ( ( self->spawnflags & 1 ) && 
		other->client->sess.sessionTeam != TEAM_SPECTATOR ) {
		return;
	}

	dest = 	FUNC0( self->target );
	if (!dest) {
		FUNC1 ("Couldn't find teleporter destination\n");
		return;
	}

	if ( !FUNC3( self->id, self->target, &other->client->ps ) ) {
		return;
	}
	if ( FUNC4( self->id, self->target, &other->client->ps ) ) {
		return;
	}

	FUNC2( other, dest->s.origin, dest->s.angles );
}