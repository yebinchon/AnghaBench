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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 scalar_t__ TIMER1_2_CONTROL_OFFSET ; 
 scalar_t__ TIMER1_AUTO_RELOAD_OFFSET ; 
 int FUNC0 () ; 
 scalar_t__ cns3xxx_tmr1 ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct clock_event_device *clk)
{
	unsigned long ctrl = FUNC1(cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);
	int pclk = FUNC0() / 8;
	int reload;

	reload = pclk * 20 / (3 * HZ) * 0x25000;
	FUNC2(reload, cns3xxx_tmr1 + TIMER1_AUTO_RELOAD_OFFSET);
	ctrl |= (1 << 0) | (1 << 2) | (1 << 9);
	FUNC2(ctrl, cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);
	return 0;
}