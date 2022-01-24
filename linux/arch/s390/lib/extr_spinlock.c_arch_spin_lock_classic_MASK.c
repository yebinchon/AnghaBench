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
 int /*<<< orphan*/  MACHINE_IS_LPAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SPINLOCK_LOCKVAL ; 
 int _Q_LOCK_CPU_MASK ; 
 int _Q_TAIL_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int spin_retry ; 

__attribute__((used)) static inline void FUNC6(arch_spinlock_t *lp)
{
	int lockval, old, new, owner, count;

	lockval = SPINLOCK_LOCKVAL;	/* cpu + 1 */

	/* Pass the virtual CPU to the lock holder if it is not running */
	owner = FUNC3(FUNC0(lp->lock), NULL);
	if (owner && FUNC4(owner - 1))
		FUNC5(owner - 1);

	count = spin_retry;
	while (1) {
		old = FUNC2(&lp->lock);
		owner = old & _Q_LOCK_CPU_MASK;
		/* Try to get the lock if it is free. */
		if (!owner) {
			new = (old & _Q_TAIL_MASK) | lockval;
			if (FUNC1(&lp->lock, old, new)) {
				/* Got the lock */
				return;
			}
			continue;
		}
		if (count-- >= 0)
			continue;
		count = spin_retry;
		if (!MACHINE_IS_LPAR || FUNC4(owner - 1))
			FUNC5(owner - 1);
	}
}