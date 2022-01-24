#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int numpoints; int /*<<< orphan*/ ** p; } ;
typedef  TYPE_1__ winding_t ;
typedef  int /*<<< orphan*/ * vec3_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  MAX_POINTS_ON_WINDING ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,double) ; 
 int SIDE_BACK ; 
 int SIDE_FRONT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 

winding_t *FUNC11(winding_t *w1, winding_t *w2, vec3_t planenormal)
{
	winding_t *neww;
	float dist;
	int i, j, n, found, insertafter;
	int sides[MAX_POINTS_ON_WINDING+4];
	vec3_t newp[MAX_POINTS_ON_WINDING+4];
	int numpoints;
	vec3_t edgevec, sepnormal, v;

	FUNC5(w1, 0.2);
	numpoints = w1->numpoints;
	FUNC10(newp, w1->p, w1->numpoints * sizeof(vec3_t));
	//
	for (i = 0; i < w2->numpoints; i++)
	{
		FUNC6(w2->p[i], v);
		for (j = 0; j < numpoints; j++)
		{
			FUNC9(newp[(j+1)%numpoints],
							newp[(j)%numpoints], edgevec);
			FUNC1(edgevec, planenormal, sepnormal);
			FUNC8(sepnormal);
			if (FUNC7(sepnormal) < 0.9)
			{
				//remove the point from the new winding
				for (n = j; n < numpoints-1; n++)
				{
					FUNC6(newp[n+1], newp[n]);
					sides[n] = sides[n+1];
				} //end for
				numpoints--;
				j--;
				FUNC3("MergeWindings: degenerate edge on winding %f %f %f\n", sepnormal[0],
																				sepnormal[1],
																				sepnormal[2]);
				continue;
			} //end if
			dist = FUNC2(newp[(j)%numpoints], sepnormal);
			if (FUNC2(v, sepnormal) - dist < -0.1) sides[j] = SIDE_BACK;
			else sides[j] = SIDE_FRONT;
		} //end for
		//remove all unnecesary points
		for (j = 0; j < numpoints;)
		{
			if (sides[j] == SIDE_BACK
				&& sides[(j+1)%numpoints] == SIDE_BACK)
			{
				//remove the point from the new winding
				for (n = (j+1)%numpoints; n < numpoints-1; n++)
				{
					FUNC6(newp[n+1], newp[n]);
					sides[n] = sides[n+1];
				} //end for
				numpoints--;
			} //end if
			else
			{
				j++;
			} //end else
		} //end for
		//
		found = false;
		for (j = 0; j < numpoints; j++)
		{
			if (sides[j] == SIDE_FRONT
				&& sides[(j+1)%numpoints] == SIDE_BACK)
			{
				if (found) FUNC3("Warning: MergeWindings: front to back found twice\n");
				found = true;
			} //end if
		} //end for
		//
		for (j = 0; j < numpoints; j++)
		{
			if (sides[j] == SIDE_FRONT
				&& sides[(j+1)%numpoints] == SIDE_BACK)
			{
				insertafter = (j+1)%numpoints;
				//insert the new point after j+1
				for (n = numpoints-1; n > insertafter; n--)
				{
					FUNC6(newp[n], newp[n+1]);
				} //end for
				numpoints++;
				FUNC6(v, newp[(insertafter+1)%numpoints]);
				break;
			} //end if
		} //end for
	} //end for
	neww = FUNC0(numpoints);
	neww->numpoints = numpoints;
	FUNC10(neww->p, newp, numpoints * sizeof(vec3_t));
	FUNC4(neww);
	return neww;
}