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
struct quakefile_s {int /*<<< orphan*/  filename; } ;
struct TYPE_4__ {int numbrushes; } ;
struct TYPE_3__ {scalar_t__ numsides; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  MAPTYPE_QUAKE3 ; 
 int MAX_MAPFILE_BRUSHES ; 
 int /*<<< orphan*/  FUNC4 (struct quakefile_s*) ; 
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

void FUNC7(struct quakefile_s *qf)
{
	int i;

	FUNC3("-- Q3_LoadMapFromBSP --\n");
	//loaded map type
	loadedmaptype = MAPTYPE_QUAKE3;

	FUNC3("Loading map from %s...\n", qf->filename);
	//load the bsp file
	FUNC4(qf);

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

	FUNC0();
	//get the map mins and maxs from the world model
	FUNC2(map_mins, map_maxs);
	for (i = 0; i < entities[0].numbrushes; i++)
	{
		if (mapbrushes[i].numsides <= 0)
			continue;
		FUNC1 (mapbrushes[i].mins, map_mins, map_maxs);
		FUNC1 (mapbrushes[i].maxs, map_mins, map_maxs);
	} //end for
	/*/
	for (i = 0; i < nummapbrushes; i++)
	{
		//if (!mapbrushes[i].original_sides) continue;
		//AddBrushBevels(&mapbrushes[i]);
		//AAS_ExpandMapBrush(&mapbrushes[i], mins, maxs);
	} //end for*/
	/*
	for (i = 0; i < nummapbrushsides; i++)
	{
		Log_Write("side %d flags = %d", i, brushsides[i].flags);
	} //end for
	for (i = 0; i < nummapbrushes; i++)
	{
		Log_Write("brush contents: ");
		PrintContents(mapbrushes[i].contents);
		Log_Print("\n");
	} //end for*/
}