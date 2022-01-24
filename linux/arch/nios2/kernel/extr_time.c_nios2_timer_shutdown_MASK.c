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
struct nios2_timer {int dummy; } ;
struct nios2_clockevent_dev {struct nios2_timer timer; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nios2_timer*) ; 
 struct nios2_clockevent_dev* FUNC1 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *evt)
{
	struct nios2_clockevent_dev *nios2_ced = FUNC1(evt);
	struct nios2_timer *timer = &nios2_ced->timer;

	FUNC0(timer);
	return 0;
}