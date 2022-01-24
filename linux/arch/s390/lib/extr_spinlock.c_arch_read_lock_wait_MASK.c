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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(arch_rwlock_t *rw)
{
	if (FUNC6(FUNC5())) {
		while (FUNC0(rw->cnts) & 0x10000)
			FUNC4();
		return;
	}

	/* Remove this reader again to allow recursive read locking */
	FUNC1(-1, &rw->cnts);
	/* Put the reader into the wait queue */
	FUNC2(&rw->wait);
	/* Now add this reader to the count value again */
	FUNC1(1, &rw->cnts);
	/* Loop until the writer is done */
	while (FUNC0(rw->cnts) & 0x10000)
		FUNC4();
	FUNC3(&rw->wait);
}