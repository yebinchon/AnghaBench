#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t planenum; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; int /*<<< orphan*/  planes; int /*<<< orphan*/ * hashnext; int /*<<< orphan*/ * next; int /*<<< orphan*/ * prev; scalar_t__ back; scalar_t__ front; int /*<<< orphan*/ * edges; } ;
typedef  TYPE_2__ th_triangle_t ;
struct TYPE_7__ {int numtriangles; TYPE_1__* vertexes; int /*<<< orphan*/ * planes; TYPE_2__* triangles; } ;
struct TYPE_5__ {int /*<<< orphan*/  v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int MAX_TH_TRIANGLES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 size_t FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__ thworld ; 

int FUNC9(int verts[3])
{
	th_triangle_t *tri;
	int i;

	if (thworld.numtriangles == 0) thworld.numtriangles = 1;
	if (thworld.numtriangles >= MAX_TH_TRIANGLES)
		FUNC2("MAX_TH_TRIANGLES");
	tri = &thworld.triangles[thworld.numtriangles++];
	for (i = 0; i < 3; i++)
	{
		tri->edges[i] = FUNC6(verts[i], verts[(i+1)%3]);
		FUNC3(FUNC8(tri->edges[i]));
	} //end for
	tri->front = 0;
	tri->back = 0;
	tri->planenum = FUNC7(verts[0], verts[1], verts[2]);
	tri->prev = NULL;
	tri->next = NULL;
	tri->hashnext = NULL;
	FUNC5(verts, &thworld.planes[tri->planenum], tri->planes);
	FUNC4(tri);
	FUNC1(tri->mins, tri->maxs);
	for (i = 0; i < 3; i++)
	{
		FUNC0(thworld.vertexes[verts[i]].v, tri->mins, tri->maxs);
	} //end for
	return thworld.numtriangles-1;
}