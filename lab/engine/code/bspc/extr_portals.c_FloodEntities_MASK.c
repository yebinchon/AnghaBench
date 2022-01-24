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
typedef  int* vec3_t ;
struct TYPE_4__ {scalar_t__ occupied; } ;
struct TYPE_5__ {TYPE_1__ outside_node; int /*<<< orphan*/ * headnode; } ;
typedef  TYPE_2__ tree_t ;
typedef  int qboolean ;
typedef  int /*<<< orphan*/  node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * entities ; 
 int num_entities ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  vec3_origin ; 

qboolean FUNC6 (tree_t *tree)
{
	int i;
	int x, y;
	vec3_t origin;
	char *cl;
	qboolean inside;
	node_t *headnode;

	headnode = tree->headnode;
	FUNC1("------ FloodEntities -------\n");
	inside = false;
	tree->outside_node.occupied = 0;

	//start at entity 1 not the world ( = 0)
	for (i = 1; i < num_entities; i++)
	{
		FUNC0(&entities[i], "origin", origin);
		if (FUNC4(origin, vec3_origin)) continue;

		cl = FUNC3(&entities[i], "classname");
		origin[2] += 1;	//so objects on floor are ok

//		Log_Print("flooding from entity %d: %s\n", i, cl);
		//nudge playerstart around if needed so clipping hulls allways
		//have a valid point
		if (!FUNC5(cl, "info_player_start"))
		{
			for (x = -16; x <= 16; x += 16)
			{
				for (y = -16; y <= 16; y += 16)
				{
					origin[0] += x;
					origin[1] += y;
					if (FUNC2(headnode, origin, &entities[i]))
					{
						inside = true;
						x = 999; //stop for this info_player_start
						break;
					} //end if
					origin[0] -= x;
					origin[1] -= y;
				} //end for
			} //end for
		} //end if
		else
		{
			if (FUNC2(headnode, origin, &entities[i]))
			{
				inside = true;
			} //end if
		} //end else
	} //end for

	if (!inside)
	{
		FUNC1("WARNING: no entities inside\n");
	} //end if
	else if (tree->outside_node.occupied)
	{
		FUNC1("WARNING: entity reached from outside\n");
	} //end else if

	return (qboolean)(inside && !tree->outside_node.occupied);
}