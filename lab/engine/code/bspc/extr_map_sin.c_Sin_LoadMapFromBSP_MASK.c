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
struct TYPE_4__ {int numbrushes; } ;
struct TYPE_3__ {int* mins; int* maxs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  MAPTYPE_SIN ; 
 int MAX_MAPFILE_BRUSHES ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int* brushmodelnumbers ; 
 TYPE_2__* entities ; 
 int /*<<< orphan*/  loadedmaptype ; 
 int /*<<< orphan*/  map_maxs ; 
 int /*<<< orphan*/  map_mins ; 
 TYPE_1__* mapbrushes ; 
 int num_entities ; 
 scalar_t__ nummapbrushsides ; 

void FUNC7(char *filename, int offset, int length)
{
	int i;

	FUNC2("-- Sin_LoadMapFromBSP --\n");
	//loaded map type
	loadedmaptype = MAPTYPE_SIN;

	FUNC2("Loading map from %s...\n", filename);
	//load the bsp file
	FUNC4(filename, offset, length);

	//create an index from bsp planes to map planes
	//DPlanes2MapPlanes();
	//clear brush model numbers
	for (i = 0; i < MAX_MAPFILE_BRUSHES; i++)
		brushmodelnumbers[i] = -1;

	nummapbrushsides = 0;
	num_entities = 0;

	FUNC6();
	//
	for (i = 0; i < num_entities; i++)
	{
		FUNC5(i);
	} //end for

	//get the map mins and maxs from the world model
	FUNC1(map_mins, map_maxs);
	for (i = 0; i < entities[0].numbrushes; i++)
	{
		if (mapbrushes[i].mins[0] > 4096)
			continue;	//no valid points
		FUNC0 (mapbrushes[i].mins, map_mins, map_maxs);
		FUNC0 (mapbrushes[i].maxs, map_mins, map_maxs);
	} //end for
	//
	FUNC3();
}