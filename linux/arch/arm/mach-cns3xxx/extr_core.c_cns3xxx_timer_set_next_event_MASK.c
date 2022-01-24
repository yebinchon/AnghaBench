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
 scalar_t__ TIMER1_2_CONTROL_OFFSET ; 
 scalar_t__ TIMER1_AUTO_RELOAD_OFFSET ; 
 scalar_t__ cns3xxx_tmr1 ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC2(unsigned long evt,
					struct clock_event_device *unused)
{
	unsigned long ctrl = FUNC0(cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);

	FUNC1(evt, cns3xxx_tmr1 + TIMER1_AUTO_RELOAD_OFFSET);
	FUNC1(ctrl | (1 << 0), cns3xxx_tmr1 + TIMER1_2_CONTROL_OFFSET);

	return 0;
}