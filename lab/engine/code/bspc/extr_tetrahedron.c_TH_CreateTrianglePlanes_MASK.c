#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_7__ {int /*<<< orphan*/  normal; int /*<<< orphan*/  dist; } ;
typedef  TYPE_2__ th_plane_t ;
struct TYPE_8__ {TYPE_1__* vertexes; } ;
struct TYPE_6__ {int /*<<< orphan*/  v; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ thworld ; 

void FUNC4(int verts[3], th_plane_t *triplane, th_plane_t *planes)
{
	int i;
	vec3_t dir;

	for (i = 0; i < 3; i++)
	{
		FUNC3(thworld.vertexes[verts[(i+1)%3]].v, thworld.vertexes[verts[i]].v, dir);
		FUNC0(dir, triplane->normal, planes[i].normal);
		FUNC2(planes[i].normal);
		planes[i].dist = FUNC1(thworld.vertexes[verts[i]].v, planes[i].normal);
	} //end for
}