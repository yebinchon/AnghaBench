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
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  MAPTYPE_HALFLIFE ; 
 char* FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 (char*) ; 
 TYPE_1__* entities ; 
 int /*<<< orphan*/  hl_numclipbrushes ; 
 scalar_t__ lessbrushes ; 
 int /*<<< orphan*/  loadedmaptype ; 
 int /*<<< orphan*/  map_maxs ; 
 int /*<<< orphan*/  map_mins ; 
 int num_entities ; 
 int /*<<< orphan*/  nummapbrushes ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

void FUNC9(char *filename, int offset, int length)
{
	int i, modelnum;
	char *model, *classname;

	FUNC4("-- HL_LoadMapFromBSP --\n");
	//loaded map type
	loadedmaptype = MAPTYPE_HALFLIFE;
	//
	FUNC7("loading map from %s at %d\n", filename, offset);
	//load the Half-Life BSP file
	FUNC2(filename, offset, length);
	//
	hl_numclipbrushes = 0;
	//parse the entities from the BSP
	FUNC3();
	//clear the map mins and maxs
	FUNC0(map_mins, map_maxs);
	//
	FUNC7("creating Half-Life brushes\n");
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
		FUNC1(&entities[i], modelnum);
	} //end for
	//
	FUNC7("%5d map brushes\n", nummapbrushes);
	FUNC7("%5d clip brushes\n", hl_numclipbrushes);
}