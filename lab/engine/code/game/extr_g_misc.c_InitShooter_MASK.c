#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int weapon; int /*<<< orphan*/  angles; } ;
struct TYPE_7__ {double random; scalar_t__ nextthink; int /*<<< orphan*/  think; scalar_t__ target; int /*<<< orphan*/  movedir; TYPE_1__ s; int /*<<< orphan*/  use; } ;
typedef  TYPE_2__ gentity_t ;
struct TYPE_8__ {scalar_t__ time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InitShooter_Finish ; 
 int M_PI ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Use_Shooter ; 
 TYPE_4__ level ; 
 double FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5( gentity_t *ent, int weapon ) {
	ent->use = Use_Shooter;
	ent->s.weapon = weapon;

	FUNC2( FUNC0( weapon ) );

	FUNC1( ent->s.angles, ent->movedir );

	if ( !ent->random ) {
		ent->random = 1.0;
	}
	ent->random = FUNC3( M_PI * ent->random / 180 );
	// target might be a moving object, so we can't set movedir for it
	if ( ent->target ) {
		ent->think = InitShooter_Finish;
		ent->nextthink = level.time + 500;
	}
	FUNC4( ent );
}