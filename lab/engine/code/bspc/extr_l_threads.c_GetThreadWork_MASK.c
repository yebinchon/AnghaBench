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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int dispatch ; 
 int oldf ; 
 scalar_t__ pacifier ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int workcount ; 

int FUNC3(void)
{
	int	r;
	int	f;

	FUNC0();

	if (dispatch == workcount)
	{
		FUNC1 ();
		return -1;
	}

	f = 10*dispatch / workcount;
	if (f != oldf)
	{
		oldf = f;
		if (pacifier)
			FUNC2 ("%i...", f);
	} //end if

	r = dispatch;
	dispatch++;
	FUNC1 ();

	return r;
}