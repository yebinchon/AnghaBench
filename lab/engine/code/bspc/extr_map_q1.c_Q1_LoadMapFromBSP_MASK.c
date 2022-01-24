#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ numbrushes; int /*<<< orphan*/  firstbrush; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MAPTYPE_QUAKE1 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 (char*) ; 
 TYPE_1__* entities ; 
 scalar_t__ lessbrushes ; 
 int /*<<< orphan*/  loadedmaptype ; 
 int /*<<< orphan*/  map_maxs ; 
 int /*<<< orphan*/  map_mins ; 
 int num_entities ; 
 int /*<<< orphan*/  nummapbrushes ; 
 int /*<<< orphan*/  q1_numclipbrushes ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

void FUNC9(char *filename, int offset, int length)
{
	int i, modelnum;
	char *model, *classname;

	FUNC1("-- Q1_LoadMapFromBSP --\n");
	//the loaded map type
	loadedmaptype = MAPTYPE_QUAKE1;
	//
	FUNC7("loading map from %s at %d\n", filename, offset);
	//load the Half-Life BSP file
	FUNC3(filename, offset, length);
	//
	q1_numclipbrushes = 0;
	//CreatePath(path);
	//Q1_CreateQ2WALFiles(path);
	//parse the entities from the BSP
	FUNC4();
	//clear the map mins and maxs
	FUNC0(map_mins, map_maxs);
	//
	FUNC7("creating Quake1 brushes\n");
	if (lessbrushes) FUNC7("creating minimum number of brushes\n");
	else FUNC7("placing textures correctly\n");
	//
	for (i = 0; i < num_entities; i++)
	{
		entities[i].firstbrush = nummapbrushes;
		entities[i].numbrushes = 0;
		//
		classname = FUNC5(&entities[i], "classname");
		if (classname && !FUNC8(classname, "worldspawn"))
		{
			modelnum = 0;
		} //end if
		else
		{
			//
			model = FUNC5(&entities[i], "model");
			if (!model || *model != '*') continue;
			model++;
			modelnum = FUNC6(model);
		} //end else
		//create map brushes for the entity
		FUNC2(&entities[i], modelnum);
	} //end for
	//
	FUNC7("%5d map brushes\n", nummapbrushes);
	FUNC7("%5d clip brushes\n", q1_numclipbrushes);
}