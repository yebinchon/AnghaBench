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
typedef  int /*<<< orphan*/  FPU_REG ;

/* Variables and functions */
 int /*<<< orphan*/  CONST_Z ; 
 int CW_Underflow ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EXP_UNDER ; 
 scalar_t__ EXTENDED_Ebias ; 
 int /*<<< orphan*/  EX_Precision ; 
 int /*<<< orphan*/  EX_Underflow ; 
 int /*<<< orphan*/  SW_C1 ; 
 int TAG_Valid ; 
 int TAG_Zero ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int control_word ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  partial_status ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(FPU_REG *dest)
{
	int tag = TAG_Valid;

	if (control_word & CW_Underflow) {
		/* The masked response */
		if (FUNC2(dest) <= EXP_UNDER - 63) {
			FUNC3(&CONST_Z, dest);
			partial_status &= ~SW_C1;	/* Round down. */
			tag = TAG_Zero;
		} else {
			FUNC4(dest);
		}
	} else {
		/* Add the magic number to the exponent. */
		FUNC1(dest, (3 * (1 << 13)) + EXTENDED_Ebias);
	}

	FUNC0(EX_Underflow);
	if (control_word & CW_Underflow) {
		/* The underflow exception is masked. */
		FUNC0(EX_Precision);
		return tag;
	}

	return tag;

}