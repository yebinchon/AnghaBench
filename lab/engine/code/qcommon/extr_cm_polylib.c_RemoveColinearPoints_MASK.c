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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 double FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_POINTS_ON_WINDING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_removed ; 

void	FUNC5 (winding_t *w)
{
	int		i, j, k;
	vec3_t	v1, v2;
	int		nump;
	vec3_t	p[MAX_POINTS_ON_WINDING];

	nump = 0;
	for (i=0 ; i<w->numpoints ; i++)
	{
		j = (i+1)%w->numpoints;
		k = (i+w->numpoints-1)%w->numpoints;
		FUNC4 (w->p[j], w->p[i], v1);
		FUNC4 (w->p[i], w->p[k], v2);
		FUNC3(v1,v1);
		FUNC3(v2,v2);
		if (FUNC1(v1, v2) < 0.999)
		{
			FUNC2 (w->p[i], p[nump]);
			nump++;
		}
	}

	if (nump == w->numpoints)
		return;

	c_removed += w->numpoints - nump;
	w->numpoints = nump;
	FUNC0 (w->p, p, nump * sizeof(*w->p));
}