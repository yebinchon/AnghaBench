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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  lock_kicker_irq ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  xen_qlock_wait_nest ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(u8 *byte, u8 val)
{
	int irq = FUNC1(lock_kicker_irq);
	atomic_t *nest_cnt = FUNC6(&xen_qlock_wait_nest);

	/* If kicker interrupts not initialized yet, just spin */
	if (irq == -1 || FUNC5())
		return;

	/* Detect reentry. */
	FUNC3(nest_cnt);

	/* If irq pending already and no nested call clear it. */
	if (FUNC4(nest_cnt) == 1 && FUNC9(irq)) {
		FUNC7(irq);
	} else if (FUNC0(*byte) == val) {
		/* Block until irq becomes pending (or a spurious wakeup) */
		FUNC8(irq);
	}

	FUNC2(nest_cnt);
}