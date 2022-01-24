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
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 scalar_t__ DO_TRACE ; 
 unsigned long MSR_DR ; 
 unsigned long MSR_EE ; 
 unsigned long MSR_IR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned long FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int64_t FUNC7(int64_t a0, int64_t a1, int64_t a2, int64_t a3,
	     int64_t a4, int64_t a5, int64_t a6, int64_t a7, int64_t opcode)
{
	unsigned long flags;
	unsigned long msr = FUNC5();
	bool mmu = (msr & (MSR_IR|MSR_DR));
	int64_t ret;

	msr &= ~MSR_EE;

	if (FUNC6(!mmu))
		return FUNC0(a0, a1, a2, a3, a4, a5, a6, a7, opcode, msr);

	FUNC4(flags);
	FUNC2();

	if (DO_TRACE) {
		ret = FUNC1(a0, a1, a2, a3, a4, a5, a6, a7, opcode, msr);
	} else {
		ret = FUNC0(a0, a1, a2, a3, a4, a5, a6, a7, opcode, msr);
	}

	FUNC3(flags);

	return ret;
}