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
typedef  int /*<<< orphan*/  vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_5__ {size_t firstedge; } ;
typedef  TYPE_1__ q1_dface_t ;
struct TYPE_7__ {size_t* v; } ;
struct TYPE_6__ {int /*<<< orphan*/ * point; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int) ; 
 TYPE_3__* q1_dedges ; 
 int* q1_dsurfedges ; 
 TYPE_2__* q1_dvertexes ; 

void FUNC5(q1_dface_t *face, vec3_t normal, float *dist)
{
	vec_t *v1, *v2, *v3;
	vec3_t vec1, vec2;
	int side, edgenum;

	edgenum = q1_dsurfedges[face->firstedge];
	side = edgenum < 0;
	v1 = q1_dvertexes[q1_dedges[FUNC4(edgenum)].v[side]].point;
	v2 = q1_dvertexes[q1_dedges[FUNC4(edgenum)].v[!side]].point;
	edgenum = q1_dsurfedges[face->firstedge+1];
	side = edgenum < 0;
	v3 = q1_dvertexes[q1_dedges[FUNC4(edgenum)].v[!side]].point;
	//
	FUNC3(v2, v1, vec1);
	FUNC3(v3, v1, vec2);

	FUNC0(vec1, vec2, normal);
	FUNC2(normal);
	*dist = FUNC1(v1, normal);
}