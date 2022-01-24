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
struct TYPE_5__ {int numpoints; int** p; } ;
typedef  TYPE_1__ winding_t ;
typedef  int vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 int BOGUS_RANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int ON_EPSILON ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int /*<<< orphan*/ ) ; 
 int WE_DEGENERATEEDGE ; 
 int WE_NONCONVEX ; 
 int WE_NONE ; 
 int WE_NOTENOUGHPOINTS ; 
 int WE_POINTBOGUSRANGE ; 
 int WE_POINTOFFPLANE ; 
 int WE_SMALLAREA ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  windingerror ; 

int FUNC8(winding_t *w)
{
	int		i, j;
	vec_t	*p1, *p2;
	vec_t	d, edgedist;
	vec3_t	dir, edgenormal, facenormal;
	vec_t	area;
	vec_t	facedist;

	if (w->numpoints < 3)
	{
		FUNC7(windingerror, "winding %i points", w->numpoints);
		return WE_NOTENOUGHPOINTS;
	} //end if
	
	area = FUNC5(w);
	if (area < 1)
	{
		FUNC7(windingerror, "winding %f area", area);
		return WE_SMALLAREA;
	} //end if

	FUNC6 (w, facenormal, &facedist);
	
	for (i=0 ; i<w->numpoints ; i++)
	{
		p1 = w->p[i];

		for (j=0 ; j<3 ; j++)
		{
			if (p1[j] > BOGUS_RANGE || p1[j] < -BOGUS_RANGE)
			{
				FUNC7(windingerror, "winding point %d BUGUS_RANGE \'%f %f %f\'", j, p1[0], p1[1], p1[2]);
				return WE_POINTBOGUSRANGE;
			} //end if
		} //end for

		j = i+1 == w->numpoints ? 0 : i+1;
		
	// check the point is on the face plane
		d = FUNC1 (p1, facenormal) - facedist;
		if (d < -ON_EPSILON || d > ON_EPSILON)
		{
			FUNC7(windingerror, "winding point %d off plane", i);
			return WE_POINTOFFPLANE;
		} //end if
	
	// check the edge isnt degenerate
		p2 = w->p[j];
		FUNC4 (p2, p1, dir);
		
		if (FUNC2 (dir) < ON_EPSILON)
		{
			FUNC7(windingerror, "winding degenerate edge %d-%d", i, j);
			return WE_DEGENERATEEDGE;
		} //end if
			
		FUNC0 (facenormal, dir, edgenormal);
		FUNC3 (edgenormal);
		edgedist = FUNC1 (p1, edgenormal);
		edgedist += ON_EPSILON;
		
	// all other points must be on front side
		for (j=0 ; j<w->numpoints ; j++)
		{
			if (j == i)
				continue;
			d = FUNC1 (w->p[j], edgenormal);
			if (d > edgedist)
			{
				FUNC7(windingerror, "winding non-convex");
				return WE_NONCONVEX;
			} //end if
		} //end for
	} //end for
	return WE_NONE;
}