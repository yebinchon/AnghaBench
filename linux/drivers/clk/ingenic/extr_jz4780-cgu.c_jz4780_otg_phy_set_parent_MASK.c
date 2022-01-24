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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ CGU_REG_USBPCR1 ; 
 int EINVAL ; 
 int /*<<< orphan*/  USBPCR1_REFCLKSEL_CORE ; 
 int /*<<< orphan*/  USBPCR1_REFCLKSEL_MASK ; 
 TYPE_1__* cgu ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, u8 idx)
{
	unsigned long flags;
	u32 usbpcr1;

	if (idx > 0)
		return -EINVAL;

	FUNC1(&cgu->lock, flags);

	usbpcr1 = FUNC0(cgu->base + CGU_REG_USBPCR1);
	usbpcr1 &= ~USBPCR1_REFCLKSEL_MASK;
	/* we only use CLKCORE */
	usbpcr1 |= USBPCR1_REFCLKSEL_CORE;
	FUNC3(usbpcr1, cgu->base + CGU_REG_USBPCR1);

	FUNC2(&cgu->lock, flags);
	return 0;
}