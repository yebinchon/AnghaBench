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
 scalar_t__ TIMER_CTRL_VAL ; 
 scalar_t__ TIMER_IER_VAL ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ regbase ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *evt)
{
	FUNC1(FUNC0(regbase + TIMER_CTRL_VAL) | 1, regbase + TIMER_CTRL_VAL);
	FUNC1(0, regbase + TIMER_IER_VAL);
	return 0;
}