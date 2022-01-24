#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  portal_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ c_active_portals ; 
 scalar_t__ c_peak_portals ; 
 int /*<<< orphan*/  c_portalmemory ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int numthreads ; 

portal_t *FUNC3 (void)
{
	portal_t	*p;
	
	p = FUNC0(sizeof(portal_t));
	FUNC2 (p, 0, sizeof(portal_t));

	if (numthreads == 1)
	{
		c_active_portals++;
		if (c_active_portals > c_peak_portals)
		{
			c_peak_portals = c_active_portals;
		} //end if
		c_portalmemory += FUNC1(p);	
	} //end if

//	p->nextportal = portallist;
//	portallist = p;
	
	return p;
}