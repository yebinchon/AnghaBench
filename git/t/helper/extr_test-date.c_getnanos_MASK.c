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
 double FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,double) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(const char **argv)
{
	double seconds = FUNC0() / 1.0e9;

	if (*argv)
		seconds -= FUNC2(*argv, NULL);
	FUNC1("%lf\n", seconds);
}