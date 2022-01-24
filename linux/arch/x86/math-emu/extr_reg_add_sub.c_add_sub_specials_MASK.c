#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_char ;
struct TYPE_10__ {int sigh; } ;
typedef  TYPE_1__ FPU_REG ;

/* Variables and functions */
 int CW_RC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EX_INTERNAL ; 
 int FPU_Exception ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int RC_DOWN ; 
 scalar_t__ SIGN_NEG ; 
 scalar_t__ SIGN_POS ; 
 scalar_t__ TAG_Empty ; 
 scalar_t__ TAG_Special ; 
 scalar_t__ TAG_Valid ; 
 scalar_t__ TAG_Zero ; 
 scalar_t__ TW_Denormal ; 
 scalar_t__ TW_Infinity ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static
int FUNC8(FPU_REG const *a, u_char taga, u_char signa,
		     FPU_REG const *b, u_char tagb, u_char signb,
		     FPU_REG * dest, int deststnr, int control_w)
{
	if (((taga == TW_Denormal) || (tagb == TW_Denormal))
	    && (FUNC5() < 0))
		return FPU_Exception;

	if (taga == TAG_Zero) {
		if (tagb == TAG_Zero) {
			/* Both are zero, result will be zero. */
			u_char different_signs = signa ^ signb;

			FUNC1(a, TAG_Zero, deststnr);
			if (different_signs) {
				/* Signs are different. */
				/* Sign of answer depends upon rounding mode. */
				FUNC7(dest, ((control_w & CW_RC) != RC_DOWN)
					? SIGN_POS : SIGN_NEG);
			} else
				FUNC7(dest, signa);	/* signa may differ from the sign of a. */
			return TAG_Zero;
		} else {
			FUNC6(b, dest);
			if ((tagb == TW_Denormal) && (b->sigh & 0x80000000)) {
				/* A pseudoDenormal, convert it. */
				FUNC3(dest, 1);
				tagb = TAG_Valid;
			} else if (tagb > TAG_Empty)
				tagb = TAG_Special;
			FUNC7(dest, signb);	/* signb may differ from the sign of b. */
			FUNC2(deststnr, tagb);
			return tagb;
		}
	} else if (tagb == TAG_Zero) {
		FUNC6(a, dest);
		if ((taga == TW_Denormal) && (a->sigh & 0x80000000)) {
			/* A pseudoDenormal */
			FUNC3(dest, 1);
			taga = TAG_Valid;
		} else if (taga > TAG_Empty)
			taga = TAG_Special;
		FUNC7(dest, signa);	/* signa may differ from the sign of a. */
		FUNC2(deststnr, taga);
		return taga;
	} else if (taga == TW_Infinity) {
		if ((tagb != TW_Infinity) || (signa == signb)) {
			FUNC1(a, TAG_Special, deststnr);
			FUNC7(dest, signa);	/* signa may differ from the sign of a. */
			return taga;
		}
		/* Infinity-Infinity is undefined. */
		return FUNC4(deststnr);
	} else if (tagb == TW_Infinity) {
		FUNC1(b, TAG_Special, deststnr);
		FUNC7(dest, signb);	/* signb may differ from the sign of b. */
		return tagb;
	}
#ifdef PARANOID
	EXCEPTION(EX_INTERNAL | 0x101);
#endif

	return FPU_Exception;
}