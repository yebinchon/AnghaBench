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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ REG_TCFG0 ; 
 int TCFG0_PRESCALER1_SHIFT ; 
 int TCFG0_PRESCALER_MASK ; 
 TYPE_1__ pwm ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  samsung_pwm_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(unsigned int channel, u16 prescale)
{
	unsigned long flags;
	u8 shift = 0;
	u32 reg;

	if (channel >= 2)
		shift = TCFG0_PRESCALER1_SHIFT;

	FUNC1(&samsung_pwm_lock, flags);

	reg = FUNC0(pwm.base + REG_TCFG0);
	reg &= ~(TCFG0_PRESCALER_MASK << shift);
	reg |= (prescale - 1) << shift;
	FUNC3(reg, pwm.base + REG_TCFG0);

	FUNC2(&samsung_pwm_lock, flags);
}