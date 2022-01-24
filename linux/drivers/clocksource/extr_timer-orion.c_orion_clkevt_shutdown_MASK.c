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
 int TIMER1_EN ; 
 int TIMER1_RELOAD_EN ; 
 scalar_t__ TIMER_CTRL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ timer_base ; 

__attribute__((used)) static int FUNC1(struct clock_event_device *dev)
{
	/* disable timer */
	FUNC0(timer_base + TIMER_CTRL,
			 TIMER1_RELOAD_EN | TIMER1_EN, 0);
	return 0;
}