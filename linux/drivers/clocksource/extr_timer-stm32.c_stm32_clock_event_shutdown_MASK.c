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
struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timer_of*) ; 
 struct timer_of* FUNC1 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC2(struct clock_event_device *clkevt)
{
	struct timer_of *to = FUNC1(clkevt);

	FUNC0(to);

	return 0;
}