#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int numSpawnVars; int** spawnVars; int spawnVarChars; int /*<<< orphan*/  spawning; scalar_t__ numSpawnVarChars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MAX_SPAWN_VARS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int,scalar_t__*,int**,int*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__*,int**,int*) ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC7( void ) {
	// allow calls to G_Spawn*()
	int i, ent_id, extra_spawn_count;
	int spawnVarsOffset[MAX_SPAWN_VARS][2];	// key / value pairs offsets
	level.spawning = qtrue;
	level.numSpawnVars = 0;

	// the worldspawn is not an actual entity, but it still
	// has a "spawn" function to perform any global setup
	// needed by a level (setting configstrings or cvars, etc)
	if ( !FUNC1() ) {
		FUNC0( "SpawnEntities: no entities" );
	}
	FUNC3();

	// parse ents
	while( FUNC1() ) {
		// Convert to offsets.
		for (i = 0; i < level.numSpawnVars; ++i) {
			spawnVarsOffset[i][0] = level.spawnVars[i][0] - level.spawnVarChars;
			spawnVarsOffset[i][1] = level.spawnVars[i][1] - level.spawnVarChars;
		}

		// Skip if spawn is not required.
		if (!FUNC6(
				level.spawnVarChars,
				&level.numSpawnVarChars,
				spawnVarsOffset,
				&level.numSpawnVars)) {
			continue;
		}
		// Convert from offsets.
		for (i = 0; i < level.numSpawnVars; ++i) {
			level.spawnVars[i][0] = level.spawnVarChars + spawnVarsOffset[i][0];
			level.spawnVars[i][1] = level.spawnVarChars + spawnVarsOffset[i][1];
		}
		FUNC2();
	}
	extra_spawn_count = FUNC4();
	for (ent_id = 0; ent_id < extra_spawn_count; ++ent_id) {
		level.numSpawnVars = 0;
		level.numSpawnVarChars = 0;
		// Early out if spawn is not required.
		FUNC5(
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
		FUNC2();
	}

	level.spawning = qfalse;			// any future calls to G_Spawn*() will be errors
}