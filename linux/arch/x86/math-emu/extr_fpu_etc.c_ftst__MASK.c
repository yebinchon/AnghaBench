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
typedef  int u_char ;
typedef  int /*<<< orphan*/  FPU_REG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EX_INTERNAL ; 
 int EX_Invalid ; 
 int EX_StackUnder ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGN_POS ; 
 int SW_C0 ; 
 int SW_C2 ; 
 int SW_C3 ; 
#define  TAG_Empty 134 
#define  TAG_Special 133 
#define  TAG_Valid 132 
#define  TAG_Zero 131 
#define  TW_Denormal 130 
#define  TW_Infinity 129 
#define  TW_NaN 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(FPU_REG *st0_ptr, u_char st0tag)
{
	switch (st0tag) {
	case TAG_Zero:
		FUNC4(SW_C3);
		break;
	case TAG_Valid:
		if (FUNC3(st0_ptr) == SIGN_POS)
			FUNC4(0);
		else
			FUNC4(SW_C0);
		break;
	case TAG_Special:
		switch (FUNC1(st0_ptr)) {
		case TW_Denormal:
			if (FUNC3(st0_ptr) == SIGN_POS)
				FUNC4(0);
			else
				FUNC4(SW_C0);
			if (FUNC2() < 0) {
#ifdef PECULIAR_486
				/* This is weird! */
				if (getsign(st0_ptr) == SIGN_POS)
					setcc(SW_C3);
#endif /* PECULIAR_486 */
				return;
			}
			break;
		case TW_NaN:
			FUNC4(SW_C0 | SW_C2 | SW_C3);	/* Operand is not comparable */
			FUNC0(EX_Invalid);
			break;
		case TW_Infinity:
			if (FUNC3(st0_ptr) == SIGN_POS)
				FUNC4(0);
			else
				FUNC4(SW_C0);
			break;
		default:
			FUNC4(SW_C0 | SW_C2 | SW_C3);	/* Operand is not comparable */
			FUNC0(EX_INTERNAL | 0x14);
			break;
		}
		break;
	case TAG_Empty:
		FUNC4(SW_C0 | SW_C2 | SW_C3);
		FUNC0(EX_StackUnder);
		break;
	}
}