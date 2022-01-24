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
struct clock_event_device {unsigned long long mult; unsigned long long shift; } ;

/* Variables and functions */
 unsigned long long HZ ; 
 scalar_t__ NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timer_of*) ; 
 struct timer_of* FUNC3 (struct clock_event_device*) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *evt)
{
	struct timer_of *to = FUNC3(evt);
	unsigned long cycles_per_jiffy;

	FUNC1(FUNC2(to));

	cycles_per_jiffy = ((unsigned long long)NSEC_PER_SEC / HZ *
			     evt->mult) >> evt->shift;
	FUNC0(FUNC2(to), true, cycles_per_jiffy);

	return 0;
}