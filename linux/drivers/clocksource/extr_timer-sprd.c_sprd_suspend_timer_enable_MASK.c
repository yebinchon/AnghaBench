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
struct clocksource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_CTL_PERIOD_MODE ; 
 int /*<<< orphan*/  TIMER_VALUE_LO_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  suspend_to ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct clocksource *cs)
{
	FUNC1(FUNC2(&suspend_to),
				  TIMER_VALUE_LO_MASK);
	FUNC0(FUNC2(&suspend_to), TIMER_CTL_PERIOD_MODE);

	return 0;
}