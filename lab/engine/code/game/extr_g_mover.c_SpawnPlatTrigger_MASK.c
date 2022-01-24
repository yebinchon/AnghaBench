#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_6__ {double* mins; double* maxs; int /*<<< orphan*/  contents; } ;
struct TYPE_7__ {char* classname; scalar_t__* pos1; TYPE_1__ r; struct TYPE_7__* parent; int /*<<< orphan*/  touch; } ;
typedef  TYPE_2__ gentity_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENTS_TRIGGER ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  Touch_PlatCenterTrigger ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,double*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3( gentity_t *ent ) {
	gentity_t	*trigger;
	vec3_t	tmin, tmax;

	// the middle trigger will be a thin trigger just
	// above the starting position
	trigger = FUNC0();
	trigger->classname = "plat_trigger";
	trigger->touch = Touch_PlatCenterTrigger;
	trigger->r.contents = CONTENTS_TRIGGER;
	trigger->parent = ent;
	
	tmin[0] = ent->pos1[0] + ent->r.mins[0] + 33;
	tmin[1] = ent->pos1[1] + ent->r.mins[1] + 33;
	tmin[2] = ent->pos1[2] + ent->r.mins[2];

	tmax[0] = ent->pos1[0] + ent->r.maxs[0] - 33;
	tmax[1] = ent->pos1[1] + ent->r.maxs[1] - 33;
	tmax[2] = ent->pos1[2] + ent->r.maxs[2] + 8;

	if ( tmax[0] <= tmin[0] ) {
		tmin[0] = ent->pos1[0] + (ent->r.mins[0] + ent->r.maxs[0]) *0.5;
		tmax[0] = tmin[0] + 1;
	}
	if ( tmax[1] <= tmin[1] ) {
		tmin[1] = ent->pos1[1] + (ent->r.mins[1] + ent->r.maxs[1]) *0.5;
		tmax[1] = tmin[1] + 1;
	}
	
	FUNC1 (tmin, trigger->r.mins);
	FUNC1 (tmax, trigger->r.maxs);

	FUNC2 (trigger);
}