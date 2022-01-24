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
 int FUNC0 (int /*<<< orphan*/ ,struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_of*) ; 
 int /*<<< orphan*/  FUNC2 (struct timer_of*) ; 
 struct timer_of* FUNC3 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *clkevt)
{
	struct timer_of *to = FUNC3(clkevt);

	FUNC1(to);

	return FUNC0(FUNC2(to), clkevt);
}