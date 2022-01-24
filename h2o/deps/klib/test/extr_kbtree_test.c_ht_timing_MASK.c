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
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,double) ; 
 void FUNC2 () ; 

void FUNC3(void (*f)(void))
{
	clock_t t = FUNC0();
	(*f)();
	FUNC1("[ht_timing] %.3lf sec\n", (double)(FUNC0() - t) / CLOCKS_PER_SEC);
}