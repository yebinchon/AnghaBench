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
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timer_list*,unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  mce_next_interval ; 
 int /*<<< orphan*/  mce_timer ; 
 struct timer_list* FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(unsigned long interval)
{
	struct timer_list *t = FUNC3(&mce_timer);
	unsigned long iv = FUNC1(mce_next_interval);

	FUNC0(t, interval);

	if (interval < iv)
		FUNC2(mce_next_interval, interval);
}