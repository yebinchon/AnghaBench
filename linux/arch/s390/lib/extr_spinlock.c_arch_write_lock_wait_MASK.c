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
struct TYPE_3__ {int /*<<< orphan*/  wait; int /*<<< orphan*/  cnts; } ;
typedef  TYPE_1__ arch_rwlock_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(arch_rwlock_t *rw)
{
	int old;

	/* Add this CPU to the write waiters */
	FUNC1(0x20000, &rw->cnts);

	/* Put the writer into the wait queue */
	FUNC3(&rw->wait);

	while (1) {
		old = FUNC0(rw->cnts);
		if ((old & 0x1ffff) == 0 &&
		    FUNC2(&rw->cnts, old, old | 0x10000))
			/* Got the lock */
			break;
		FUNC5();
	}

	FUNC4(&rw->wait);
}