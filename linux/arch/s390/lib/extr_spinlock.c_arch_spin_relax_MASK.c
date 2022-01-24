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
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ arch_spinlock_t ;

/* Variables and functions */
 scalar_t__ MACHINE_IS_LPAR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int _Q_LOCK_CPU_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(arch_spinlock_t *lp)
{
	int cpu;

	cpu = FUNC0(lp->lock) & _Q_LOCK_CPU_MASK;
	if (!cpu)
		return;
	if (MACHINE_IS_LPAR && !FUNC1(cpu - 1))
		return;
	FUNC2(cpu - 1);
}