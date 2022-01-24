#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct spin_wait {int node_id; TYPE_3__* prev; TYPE_3__* next; } ;
struct TYPE_7__ {TYPE_3__* lock; } ;
typedef  TYPE_1__ arch_spinlock_t ;
struct TYPE_9__ {int /*<<< orphan*/  spinlock_index; } ;
struct TYPE_8__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACHINE_IS_LPAR ; 
 struct spin_wait* FUNC0 (TYPE_3__*) ; 
 TYPE_5__ S390_lowcore ; 
 int SPINLOCK_LOCKVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct spin_wait*) ; 
 int _Q_LOCK_CPU_MASK ; 
 int _Q_LOCK_MASK ; 
 int _Q_LOCK_STEAL_ADD ; 
 int _Q_LOCK_STEAL_MASK ; 
 int _Q_TAIL_MASK ; 
 scalar_t__ FUNC2 (TYPE_3__**,int,int) ; 
 TYPE_3__* FUNC3 (int) ; 
 int FUNC4 (int,struct spin_wait*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int spin_retry ; 
 int /*<<< orphan*/ * spin_wait ; 
 struct spin_wait* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC9(arch_spinlock_t *lp)
{
	struct spin_wait *node, *next;
	int lockval, ix, node_id, tail_id, old, new, owner, count;

	ix = S390_lowcore.spinlock_index++;
	FUNC6();
	lockval = SPINLOCK_LOCKVAL;	/* cpu + 1 */
	node = FUNC8(&spin_wait[ix]);
	node->prev = node->next = NULL;
	node_id = node->node_id;

	/* Enqueue the node for this CPU in the spinlock wait queue */
	while (1) {
		old = FUNC0(lp->lock);
		if ((old & _Q_LOCK_CPU_MASK) == 0 &&
		    (old & _Q_LOCK_STEAL_MASK) != _Q_LOCK_STEAL_MASK) {
			/*
			 * The lock is free but there may be waiters.
			 * With no waiters simply take the lock, if there
			 * are waiters try to steal the lock. The lock may
			 * be stolen three times before the next queued
			 * waiter will get the lock.
			 */
			new = (old ? (old + _Q_LOCK_STEAL_ADD) : 0) | lockval;
			if (FUNC2(&lp->lock, old, new))
				/* Got the lock */
				goto out;
			/* lock passing in progress */
			continue;
		}
		/* Make the node of this CPU the new tail. */
		new = node_id | (old & _Q_LOCK_MASK);
		if (FUNC2(&lp->lock, old, new))
			break;
	}
	/* Set the 'next' pointer of the tail node in the queue */
	tail_id = old & _Q_TAIL_MASK;
	if (tail_id != 0) {
		node->prev = FUNC3(tail_id);
		FUNC1(node->prev->next, node);
	}

	/* Pass the virtual CPU to the lock holder if it is not running */
	owner = FUNC4(old, node);
	if (owner && FUNC5(owner - 1))
		FUNC7(owner - 1);

	/* Spin on the CPU local node->prev pointer */
	if (tail_id != 0) {
		count = spin_retry;
		while (FUNC0(node->prev) != NULL) {
			if (count-- >= 0)
				continue;
			count = spin_retry;
			/* Query running state of lock holder again. */
			owner = FUNC4(old, node);
			if (owner && FUNC5(owner - 1))
				FUNC7(owner - 1);
		}
	}

	/* Spin on the lock value in the spinlock_t */
	count = spin_retry;
	while (1) {
		old = FUNC0(lp->lock);
		owner = old & _Q_LOCK_CPU_MASK;
		if (!owner) {
			tail_id = old & _Q_TAIL_MASK;
			new = ((tail_id != node_id) ? tail_id : 0) | lockval;
			if (FUNC2(&lp->lock, old, new))
				/* Got the lock */
				break;
			continue;
		}
		if (count-- >= 0)
			continue;
		count = spin_retry;
		if (!MACHINE_IS_LPAR || FUNC5(owner - 1))
			FUNC7(owner - 1);
	}

	/* Pass lock_spin job to next CPU in the queue */
	if (node_id && tail_id != node_id) {
		/* Wait until the next CPU has set up the 'next' pointer */
		while ((next = FUNC0(node->next)) == NULL)
			;
		next->prev = NULL;
	}

 out:
	S390_lowcore.spinlock_index--;
}