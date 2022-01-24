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
struct nios2_timer {int /*<<< orphan*/  freq; } ;
struct nios2_clockevent_dev {struct nios2_timer timer; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC1 (struct nios2_timer*,unsigned long,int) ; 
 struct nios2_clockevent_dev* FUNC2 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC3(struct clock_event_device *evt)
{
	unsigned long period;
	struct nios2_clockevent_dev *nios2_ced = FUNC2(evt);
	struct nios2_timer *timer = &nios2_ced->timer;

	period = FUNC0(timer->freq, HZ);
	FUNC1(timer, period, true);
	return 0;
}