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
 int /*<<< orphan*/  cpus_stuck_in_kernel ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 

bool FUNC2(void)
{
	bool smp_spin_tables = (FUNC1() > 1 && !FUNC0());

	return !!cpus_stuck_in_kernel || smp_spin_tables;
}