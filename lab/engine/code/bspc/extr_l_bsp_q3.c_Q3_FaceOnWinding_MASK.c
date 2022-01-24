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
typedef  int /*<<< orphan*/  winding_t ;
typedef  int /*<<< orphan*/  vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_6__ {int numVerts; int firstVert; } ;
typedef  TYPE_1__ q3_dsurface_t ;
struct TYPE_7__ {int /*<<< orphan*/  normal; int /*<<< orphan*/  dist; } ;
typedef  TYPE_2__ q3_dplane_t ;
struct TYPE_8__ {int /*<<< orphan*/ * xyz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,float,double) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 float FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_3__* q3_drawVerts ; 

float FUNC9(q3_dsurface_t *surface, winding_t *winding)
{
	int i;
	float dist, area;
	q3_dplane_t plane;
	vec_t *v1, *v2;
	vec3_t normal, edgevec;
	winding_t *w;

	//copy the winding before chopping
	w = FUNC1(winding);
	//retrieve the surface plane
	FUNC5(surface, plane.normal, &plane.dist);
	//chop the winding with the surface edge planes
	for (i = 0; i < surface->numVerts && w; i++)
	{
		v1 = q3_drawVerts[surface->firstVert + ((i) % surface->numVerts)].xyz;
		v2 = q3_drawVerts[surface->firstVert + ((i+1) % surface->numVerts)].xyz;
		//create a plane through the edge from v1 to v2, orthogonal to the
		//surface plane and with the normal vector pointing inward
		FUNC7(v2, v1, edgevec);
		FUNC2(edgevec, plane.normal, normal);
		FUNC6(normal);
		dist = FUNC3(normal, v1);
		//
		FUNC0(&w, normal, dist, -0.1); //CLIP_EPSILON
	} //end for
	if (w)
	{
		area = FUNC8(w);
		FUNC4(w);
		return area;
	} //end if
	return 0;
}