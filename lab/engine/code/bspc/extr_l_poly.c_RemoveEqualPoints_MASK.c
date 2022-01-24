#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ winding_t ;
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_POINTS_ON_WINDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC5(winding_t *w, float epsilon)
{
	int i, nump;
	vec3_t v;
	vec3_t p[MAX_POINTS_ON_WINDING];

	FUNC1(w->p[0], p[0]);
	nump = 1;
	for (i = 1; i < w->numpoints; i++)
	{
		FUNC3(w->p[i], p[nump-1], v);
		if (FUNC2(v) > epsilon)
		{
			if (nump >= MAX_POINTS_ON_WINDING)
				FUNC0("RemoveColinearPoints: MAX_POINTS_ON_WINDING");
			FUNC1 (w->p[i], p[nump]);
			nump++;
		} //end if
	} //end for

	if (nump == w->numpoints)
		return;

	w->numpoints = nump;
	FUNC4(w->p, p, nump * sizeof(p[0]));
}