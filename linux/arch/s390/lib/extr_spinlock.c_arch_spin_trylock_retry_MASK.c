#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ arch_spinlock_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SPINLOCK_LOCKVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int spin_retry ; 

int FUNC2(arch_spinlock_t *lp)
{
	int cpu = SPINLOCK_LOCKVAL;
	int owner, count;

	for (count = spin_retry; count > 0; count--) {
		owner = FUNC0(lp->lock);
		/* Try to get the lock if it is free. */
		if (!owner) {
			if (FUNC1(&lp->lock, 0, cpu))
				return 1;
		}
	}
	return 0;
}