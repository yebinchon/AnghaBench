#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_14__ {size_t ownerNum; int /*<<< orphan*/  currentOrigin; } ;
struct TYPE_12__ {int /*<<< orphan*/  eType; int /*<<< orphan*/  pos; } ;
struct TYPE_15__ {TYPE_3__ r; int /*<<< orphan*/  splashMethodOfDeath; int /*<<< orphan*/  splashRadius; scalar_t__ splashDamage; int /*<<< orphan*/  parent; int /*<<< orphan*/  freeAfterEvent; TYPE_1__ s; } ;
typedef  TYPE_4__ gentity_t ;
struct TYPE_17__ {TYPE_2__* client; } ;
struct TYPE_16__ {int /*<<< orphan*/  time; } ;
struct TYPE_13__ {int /*<<< orphan*/  accuracy_hits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  ET_GENERAL ; 
 int /*<<< orphan*/  EV_MISSILE_MISS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 TYPE_7__* g_entities ; 
 TYPE_6__ level ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 

void FUNC7( gentity_t *ent ) {
	vec3_t		dir;
	vec3_t		origin;

	FUNC0( &ent->s.pos, level.time, origin );
	FUNC5( origin );
	FUNC4( ent, origin );

	// we don't have a valid direction, so just point straight up
	dir[0] = dir[1] = 0;
	dir[2] = 1;

	ent->s.eType = ET_GENERAL;
	FUNC2( ent, EV_MISSILE_MISS, FUNC1( dir ) );

	ent->freeAfterEvent = qtrue;

	// splash damage
	if ( ent->splashDamage ) {
		if( FUNC3( ent->r.currentOrigin, ent->parent, ent->splashDamage, ent->splashRadius, ent
			, ent->splashMethodOfDeath ) ) {
			g_entities[ent->r.ownerNum].client->accuracy_hits++;
		}
	}

	FUNC6( ent );
}