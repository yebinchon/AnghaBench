#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ gentity_t ;
struct TYPE_5__ {int numSpawnVars; int /*<<< orphan*/  spawning; scalar_t__ spawnVarChars; scalar_t__** spawnVars; scalar_t__ numSpawnVarChars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FL_DROPPED_ITEM ; 
 TYPE_1__* FUNC0 () ; 
 int MAX_SPAWN_VARS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,scalar_t__*,int**,int*) ; 
 TYPE_2__ level ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC4( void ) {
	gentity_t* ent;
	int i, ent_id, entity_count;
	int spawnVarsOffset[MAX_SPAWN_VARS][2];	// key / value pairs offsets
	entity_count = FUNC2();
	if (entity_count == 0) {
		return;
	}

	level.spawning = qtrue;
	level.numSpawnVars = 0;

	for (ent_id = 0; ent_id < entity_count; ++ent_id) {
		level.numSpawnVars = 0;
		level.numSpawnVarChars = 0;

		FUNC3(
				ent_id,
				level.spawnVarChars,
				&level.numSpawnVarChars,
				spawnVarsOffset,
				&level.numSpawnVars);

		// Convert from offsets.
		for (i = 0; i < level.numSpawnVars; ++i) {
			level.spawnVars[i][0] = level.spawnVarChars + spawnVarsOffset[i][0];
			level.spawnVars[i][1] = level.spawnVarChars + spawnVarsOffset[i][1];
		}
		ent = FUNC0();
		if (ent) ent->flags |= FL_DROPPED_ITEM;
	}
	FUNC1();
	level.spawning = qfalse;
}