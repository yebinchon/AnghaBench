#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  mask_clear; } ;

/* Variables and functions */
 size_t SUN4M_PROFILE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sun4m_imask ; 
 TYPE_1__* sun4m_irq_global ; 

void FUNC3(void)
{
	unsigned long flags;

	FUNC1(flags);
	FUNC2(sun4m_imask[SUN4M_PROFILE_IRQ], &sun4m_irq_global->mask_clear);
	FUNC0(flags);
}