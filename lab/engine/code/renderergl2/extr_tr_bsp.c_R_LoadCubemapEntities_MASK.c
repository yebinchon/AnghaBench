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
typedef  int /*<<< orphan*/ * vec3_t ;
typedef  int /*<<< orphan*/  spawnVarChars ;
typedef  scalar_t__ qboolean ;
struct TYPE_6__ {char* name; float parallaxRadius; int /*<<< orphan*/  origin; } ;
typedef  TYPE_1__ cubemap_t ;
struct TYPE_8__ {TYPE_1__* (* Hunk_Alloc ) (int,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int numCubemaps; TYPE_1__* cubemaps; } ;

/* Variables and functions */
 int MAX_QPATH ; 
 int MAX_SPAWN_VARS ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 scalar_t__ FUNC2 (char*,int,int*,char***) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h_low ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 TYPE_4__ ri ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,float*,...) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__ tr ; 

void FUNC7(char *cubemapEntityName)
{
	char spawnVarChars[2048];
	int numSpawnVars;
	char *spawnVars[MAX_SPAWN_VARS][2];
	int numCubemaps = 0;

	// count cubemaps
	numCubemaps = 0;
	while(FUNC2(spawnVarChars, sizeof(spawnVarChars), &numSpawnVars, spawnVars))
	{
		int i;

		for (i = 0; i < numSpawnVars; i++)
		{
			if (!FUNC0(spawnVars[i][0], "classname") && !FUNC0(spawnVars[i][1], cubemapEntityName))
				numCubemaps++;
		}
	}

	if (!numCubemaps)
		return;

	tr.numCubemaps = numCubemaps;
	tr.cubemaps = ri.Hunk_Alloc(tr.numCubemaps * sizeof(*tr.cubemaps), h_low);
	FUNC4(tr.cubemaps, 0, tr.numCubemaps * sizeof(*tr.cubemaps));

	numCubemaps = 0;
	while(FUNC2(spawnVarChars, sizeof(spawnVarChars), &numSpawnVars, spawnVars))
	{
		int i;
		char name[MAX_QPATH];
		qboolean isCubemap = qfalse;
		qboolean originSet = qfalse;
		vec3_t origin;
		float parallaxRadius = 1000.0f;

		name[0] = '\0';
		for (i = 0; i < numSpawnVars; i++)
		{
			if (!FUNC0(spawnVars[i][0], "classname") && !FUNC0(spawnVars[i][1], cubemapEntityName))
				isCubemap = qtrue;

			if (!FUNC0(spawnVars[i][0], "name"))
				FUNC1(name, spawnVars[i][1], MAX_QPATH);

			if (!FUNC0(spawnVars[i][0], "origin"))
			{
				FUNC5(spawnVars[i][1], "%f %f %f", &origin[0], &origin[1], &origin[2]);
				originSet = qtrue;
			}
			else if (!FUNC0(spawnVars[i][0], "radius"))
			{
				FUNC5(spawnVars[i][1], "%f", &parallaxRadius);
			}
		}

		if (isCubemap && originSet)
		{
			cubemap_t *cubemap = &tr.cubemaps[numCubemaps];
			FUNC1(cubemap->name, name, MAX_QPATH);
			FUNC3(origin, cubemap->origin);
			cubemap->parallaxRadius = parallaxRadius;
			numCubemaps++;
		}
	}
}