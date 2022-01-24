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
typedef  int /*<<< orphan*/  u8 ;
struct mce {scalar_t__ inject_flags; int /*<<< orphan*/  misc; int /*<<< orphan*/  addr; int /*<<< orphan*/  status; int /*<<< orphan*/  synd; int /*<<< orphan*/  mcgstatus; int /*<<< orphan*/  bank; } ;

/* Variables and functions */
 scalar_t__ DFR_INT_INJ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSR_IA32_MCG_STATUS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X86_FEATURE_SMCA ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(void *info)
{
	struct mce m = *(struct mce *)info;
	u8 b = m.bank;

	FUNC10(MSR_IA32_MCG_STATUS, m.mcgstatus);

	if (FUNC9(X86_FEATURE_SMCA)) {
		if (m.inject_flags == DFR_INT_INJ) {
			FUNC10(FUNC2(b), m.status);
			FUNC10(FUNC1(b), m.addr);
		} else {
			FUNC10(FUNC4(b), m.status);
			FUNC10(FUNC0(b), m.addr);
		}

		FUNC10(FUNC3(b), m.misc);
		FUNC10(FUNC5(b), m.synd);
	} else {
		FUNC10(FUNC8(b), m.status);
		FUNC10(FUNC6(b), m.addr);
		FUNC10(FUNC7(b), m.misc);
	}
}