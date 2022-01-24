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
struct TYPE_4__ {int** p; int numpoints; } ;
typedef  TYPE_1__ winding_t ;
typedef  int /*<<< orphan*/  vec_t ;
typedef  int* vec3_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  MAX_MAP_BOUNDS ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  vec3_origin ; 

winding_t *FUNC11 (vec3_t normal, vec_t dist)
{
	int		i, x;
	vec_t	max, v;
	vec3_t	org, vright, vup;
	winding_t	*w;
	
// find the major axis

	max = -MAX_MAP_BOUNDS;
	x = -1;
	for (i=0 ; i<3; i++)
	{
		v = FUNC10(normal[i]);
		if (v > max)
		{
			x = i;
			max = v;
		}
	}
	if (x==-1)
		FUNC1 (ERR_DROP, "BaseWindingForPlane: no axis found");
		
	FUNC5 (vec3_origin, vup);	
	switch (x)
	{
	case 0:
	case 1:
		vup[2] = 1;
		break;		
	case 2:
		vup[0] = 1;
		break;		
	}

	v = FUNC3 (vup, normal);
	FUNC6 (vup, -v, normal, vup);
	FUNC7(vup, vup);
		
	FUNC8 (normal, dist, org);
	
	FUNC2 (vup, normal, vright);
	
	FUNC8 (vup, MAX_MAP_BOUNDS, vup);
	FUNC8 (vright, MAX_MAP_BOUNDS, vright);

// project a really big	axis aligned box onto the plane
	w = FUNC0 (4);
	
	FUNC9 (org, vright, w->p[0]);
	FUNC4 (w->p[0], vup, w->p[0]);
	
	FUNC4 (org, vright, w->p[1]);
	FUNC4 (w->p[1], vup, w->p[1]);
	
	FUNC4 (org, vright, w->p[2]);
	FUNC9 (w->p[2], vup, w->p[2]);
	
	FUNC9 (org, vright, w->p[3]);
	FUNC9 (w->p[3], vup, w->p[3]);
	
	w->numpoints = 4;
	
	return w;	
}