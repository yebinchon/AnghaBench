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
 unsigned long long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long fudgefactor ; 
 unsigned long pcycle_freq_mhz ; 

void FUNC2(unsigned long usecs)
{
	unsigned long long start = FUNC0();
	unsigned long long finish = (pcycle_freq_mhz * usecs) - fudgefactor;

	while ((FUNC0() - start) < finish)
		FUNC1(); /*  not sure how this improves readability  */
}