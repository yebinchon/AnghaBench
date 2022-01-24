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
struct unwinder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  curr_unwinder ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct unwinder*) ; 
 int /*<<< orphan*/  unwinder_lock ; 

int FUNC4(struct unwinder *u)
{
	unsigned long flags;
	int ret;

	FUNC1(&unwinder_lock, flags);
	ret = FUNC3(u);
	if (!ret)
		curr_unwinder = FUNC0();
	FUNC2(&unwinder_lock, flags);

	return ret;
}