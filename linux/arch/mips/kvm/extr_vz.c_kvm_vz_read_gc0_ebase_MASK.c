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
 scalar_t__ cpu_has_ebase_wg ; 
 long FUNC0 () ; 
 long FUNC1 () ; 

__attribute__((used)) static inline long FUNC2(void)
{
	if (sizeof(long) == 8 && cpu_has_ebase_wg)
		return FUNC1();
	else
		return FUNC0();
}