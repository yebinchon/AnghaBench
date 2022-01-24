#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int tier; unsigned int twer; } ;
struct omap_dm_timer {TYPE_1__ context; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct omap_dm_timer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dm_timer*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_dm_timer*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct omap_dm_timer *timer,
					unsigned int value)
{
	if (FUNC3(!timer))
		return -EINVAL;

	FUNC2(timer);
	FUNC0(timer, value);

	/* Save the context */
	timer->context.tier = value;
	timer->context.twer = value;
	FUNC1(timer);
	return 0;
}