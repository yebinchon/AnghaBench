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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct timer_of*) ; 
 struct timer_of* FUNC4 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC5(unsigned long cycles,
				     struct clock_event_device *ce)
{
	struct timer_of *to = FUNC4(ce);

	FUNC0(FUNC3(to));
	FUNC2(FUNC3(to), cycles);
	FUNC1(FUNC3(to), 0);

	return 0;
}