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

/* Variables and functions */
 int PAGE_MASK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void FUNC16(unsigned long page)
{
	unsigned long flags;
	int oldpid, idx;

	FUNC5(flags);
	oldpid = FUNC7();
	FUNC3();
	page &= (PAGE_MASK << 1);
	FUNC13(page);
	FUNC6();
	FUNC9();
	FUNC10();
	idx = FUNC8();
	FUNC14(0);
	FUNC15(0);
	if (idx >= 0) {
		/* Make sure all entries differ. */
		FUNC13(FUNC0(idx));
		FUNC6();
		FUNC11();
		FUNC12();
	}
	FUNC13(oldpid);
	FUNC2();
	FUNC1();
	FUNC4(flags);
}