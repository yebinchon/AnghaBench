#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_5__ {struct TYPE_5__** children; int /*<<< orphan*/ * tmparea; void* planenum; } ;
typedef  TYPE_1__ tmp_node_t ;
typedef  int /*<<< orphan*/  tmp_area_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 void* FUNC3 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  numgravitationalsubdivisions ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

tmp_node_t *FUNC5(tmp_node_t *tmpnode)
{
	int planenum;
	tmp_area_t *frontarea, *backarea;
	tmp_node_t *tmpnode1, *tmpnode2;
	vec3_t normal;
	float dist;

	if (FUNC1(tmpnode->tmparea, normal, &dist))
	{
		FUNC4("\r%6d", ++numgravitationalsubdivisions);
		//
		planenum = FUNC3(normal, dist);
		//split the area
		FUNC2(tmpnode->tmparea, planenum, &frontarea, &backarea);
		//
		tmpnode->tmparea = NULL;
		tmpnode->planenum = FUNC3(normal, dist);
		//
		tmpnode1 = FUNC0();
		tmpnode1->planenum = 0;
		tmpnode1->tmparea = frontarea;
		//
		tmpnode2 = FUNC0();
		tmpnode2->planenum = 0;
		tmpnode2->tmparea = backarea;
		//subdivide the areas created by splitting recursively
		tmpnode->children[0] = FUNC5(tmpnode1);
		tmpnode->children[1] = FUNC5(tmpnode2);
	} //end if
	return tmpnode;
}