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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int BCM63XX_TIMER_COUNT ; 
 int EINVAL ; 
 int /*<<< orphan*/  TIMER_CTL_ENABLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TIMER_IRQSTAT_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer_reg_lock ; 

int FUNC6(int id)
{
	u32 reg;
	unsigned long flags;

	if (id >= BCM63XX_TIMER_COUNT)
		return -EINVAL;

	FUNC4(&timer_reg_lock, flags);

	reg = FUNC2(FUNC0(id));
	reg |= TIMER_CTL_ENABLE_MASK;
	FUNC3(reg, FUNC0(id));

	reg = FUNC2(TIMER_IRQSTAT_REG);
	reg |= FUNC1(id);
	FUNC3(reg, TIMER_IRQSTAT_REG);

	FUNC5(&timer_reg_lock, flags);
	return 0;
}