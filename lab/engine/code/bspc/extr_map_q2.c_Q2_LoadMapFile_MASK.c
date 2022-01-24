#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_t ;
struct TYPE_4__ {int numbrushes; } ;
struct TYPE_3__ {int* mins; int* maxs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  MAPTYPE_QUAKE2 ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int SCFL_NOSTRINGESCAPECHARS ; 
 int SCFL_NOSTRINGWHITESPACES ; 
 int SCFL_PRIMITIVE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* entities ; 
 int /*<<< orphan*/  loadedmaptype ; 
 int /*<<< orphan*/  map_maxs ; 
 int /*<<< orphan*/  map_mins ; 
 TYPE_1__* mapbrushes ; 
 scalar_t__ num_entities ; 
 scalar_t__ nummapbrushsides ; 

void FUNC10(char *filename)
{		
	int i;
	script_t *script;

	FUNC4("-- Q2_LoadMapFile --\n");
#ifdef ME
	//loaded map type
	loadedmaptype = MAPTYPE_QUAKE2;
	//reset the map loading
	ResetMapLoading();
#endif //ME

	script = FUNC3(filename);
	if (!script)
	{
		FUNC4("couldn't open %s\n", filename);
		return;
	} //end if
	//white spaces and escape characters inside a string are not allowed
	FUNC9(script, SCFL_NOSTRINGWHITESPACES |
									SCFL_NOSTRINGESCAPECHARS |
									SCFL_PRIMITIVE);

	nummapbrushsides = 0;
	num_entities = 0;
	
	while (FUNC7(script))
	{
	}

	FUNC1 (map_mins, map_maxs);
	for (i=0 ; i<entities[0].numbrushes ; i++)
	{
		if (mapbrushes[i].mins[0] > 4096)
			continue;	// no valid points
		FUNC0 (mapbrushes[i].mins, map_mins, map_maxs);
		FUNC0 (mapbrushes[i].maxs, map_mins, map_maxs);
	} //end for

	FUNC5();

	//free the script
	FUNC2(script);
//	TestExpandBrushes ();
	//
	FUNC6();
}