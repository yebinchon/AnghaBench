#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_3__ {int div_base; } ;
struct TYPE_4__ {scalar_t__ base; TYPE_1__ variant; } ;

/* Variables and functions */
 scalar_t__ REG_TCFG1 ; 
 int TCFG1_MUX_MASK ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int) ; 
 TYPE_2__ pwm ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  samsung_pwm_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(unsigned int channel, u8 divisor)
{
	u8 shift = FUNC0(channel);
	unsigned long flags;
	u32 reg;
	u8 bits;

	bits = (FUNC1(divisor) - 1) - pwm.variant.div_base;

	FUNC3(&samsung_pwm_lock, flags);

	reg = FUNC2(pwm.base + REG_TCFG1);
	reg &= ~(TCFG1_MUX_MASK << shift);
	reg |= bits << shift;
	FUNC5(reg, pwm.base + REG_TCFG1);

	FUNC4(&samsung_pwm_lock, flags);
}