#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winding_t ;
typedef  int /*<<< orphan*/  vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_7__ {int /*<<< orphan*/  normal; int /*<<< orphan*/  dist; } ;
typedef  TYPE_1__ sin_dplane_t ;
struct TYPE_8__ {size_t planenum; int numedges; int firstedge; scalar_t__ side; } ;
typedef  TYPE_2__ sin_dface_t ;
struct TYPE_10__ {size_t* v; } ;
struct TYPE_9__ {int /*<<< orphan*/ * point; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,float,double) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 float FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 TYPE_4__* sin_dedges ; 
 int /*<<< orphan*/ * sin_dplanes ; 
 int* sin_dsurfedges ; 
 TYPE_3__* sin_dvertexes ; 

float FUNC11(sin_dface_t *face, winding_t *winding)
{
	int i, edgenum, side;
	float dist, area;
	sin_dplane_t plane;
	vec_t *v1, *v2;
	vec3_t normal, edgevec;
	winding_t *w;

	//
	w = FUNC1(winding);
	FUNC10(&plane, &sin_dplanes[face->planenum], sizeof(sin_dplane_t));
	//check on which side of the plane the face is
	if (face->side)
	{
		FUNC5(plane.normal, plane.normal);
		plane.dist = -plane.dist;
	} //end if
	for (i = 0; i < face->numedges && w; i++)
	{
		//get the first and second vertex of the edge
		edgenum = sin_dsurfedges[face->firstedge + i];
		side = edgenum > 0;
		//if the face plane is flipped
		v1 = sin_dvertexes[sin_dedges[FUNC9(edgenum)].v[side]].point;
		v2 = sin_dvertexes[sin_dedges[FUNC9(edgenum)].v[!side]].point;
		//create a plane through the edge vector, orthogonal to the face plane
		//and with the normal vector pointing out of the face
		FUNC7(v1, v2, edgevec);
		FUNC2(edgevec, plane.normal, normal);
		FUNC6(normal);
		dist = FUNC3(normal, v1);
		//
		FUNC0(&w, normal, dist, 0.9); //CLIP_EPSILON
	} //end for
	if (w)
	{
		area = FUNC8(w);
		FUNC4(w);
		return area;
	} //end if
	return 0;
}