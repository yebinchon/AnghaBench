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
 int FUNC0 () ; 
 int mx5_cpu_rev ; 

int FUNC1(void)
{
	if (mx5_cpu_rev == -1)
		mx5_cpu_rev = FUNC0();

	return mx5_cpu_rev;
}