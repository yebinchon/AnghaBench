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
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ REG_TCON ; 
 unsigned long FUNC2 (unsigned int) ; 
 unsigned long FUNC3 (unsigned int) ; 
 unsigned long FUNC4 (unsigned int) ; 
 TYPE_1__ pwm ; 
 unsigned long FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  samsung_pwm_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC9(unsigned int channel, unsigned long tcnt)
{
	unsigned long tcon;
	unsigned long flags;
	unsigned int tcon_chan = channel;

	if (tcon_chan > 0)
		++tcon_chan;

	FUNC6(&samsung_pwm_lock, flags);

	tcon = FUNC5(pwm.base + REG_TCON);

	tcon &= ~(FUNC4(tcon_chan) | FUNC2(tcon_chan));
	tcon |= FUNC3(tcon_chan);

	FUNC8(tcnt, pwm.base + FUNC1(channel));
	FUNC8(tcnt, pwm.base + FUNC0(channel));
	FUNC8(tcon, pwm.base + REG_TCON);

	FUNC7(&samsung_pwm_lock, flags);
}