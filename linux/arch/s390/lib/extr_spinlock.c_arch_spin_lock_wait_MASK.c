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
typedef  int /*<<< orphan*/  arch_spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  CIF_DEDICATED_CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(arch_spinlock_t *lp)
{
	/* Use classic spinlocks + niai if the steal time is >= 10% */
	if (FUNC2(CIF_DEDICATED_CPU))
		FUNC1(lp);
	else
		FUNC0(lp);
}