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
struct irq_desc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCUINTR ; 
 int /*<<< orphan*/  BCU_IRQ ; 
 scalar_t__ CPU_VR4122 ; 
 scalar_t__ CPU_VR4131 ; 
 scalar_t__ CPU_VR4133 ; 
 int /*<<< orphan*/  MBCUINTREG ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_desc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(void)
{
	struct irq_desc *desc = FUNC2(BCU_IRQ);
	unsigned long flags;

	if (FUNC0() == CPU_VR4122 ||
	    FUNC0() == CPU_VR4131 ||
	    FUNC0() == CPU_VR4133) {
		FUNC3(&desc->lock, flags);
		FUNC1(MBCUINTREG, BCUINTR);
		FUNC4(&desc->lock, flags);
	}
}