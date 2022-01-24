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
struct omap_hwmod {int /*<<< orphan*/  _lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct omap_hwmod*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct omap_hwmod *oh)
{
	int r;
	unsigned long flags;

	if (!oh)
		return -EINVAL;

	FUNC1(&oh->_lock, flags);
	r = FUNC0(oh);
	FUNC2(&oh->_lock, flags);

	return r;
}