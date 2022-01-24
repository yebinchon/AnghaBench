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
 int /*<<< orphan*/  XEN_SPIN_UNLOCK_VECTOR ; 
 int /*<<< orphan*/  lock_kicker_irq ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int cpu)
{
	int irq = FUNC0(lock_kicker_irq, cpu);

	/* Don't kick if the target's kicker interrupt is not initialized. */
	if (irq == -1)
		return;

	FUNC1(cpu, XEN_SPIN_UNLOCK_VECTOR);
}