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
typedef  int /*<<< orphan*/  dbl_unsigned ;
typedef  int /*<<< orphan*/  dbl_floating_point ;

/* Variables and functions */
 int DBL_BIAS ; 
 int DBL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned int,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int) ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int NOEXCEPTION ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

int
FUNC13 (dbl_floating_point * srcptr, unsigned int *nullptr,
		    dbl_unsigned * dstptr, unsigned int *status)
{
	register int src_exponent;
	register unsigned int srcp1, srcp2, resultp1, resultp2;

	FUNC1(srcptr,srcp1,srcp2);
	src_exponent = FUNC2(srcp1) - DBL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > DBL_FX_MAX_EXP + 1) {
		if (FUNC5(srcp1)) {
			resultp1 = resultp2 = 0;
		} else {
			resultp1 = resultp2 = 0xffffffff;
		}
		if (FUNC10()) {
			return(INVALIDEXCEPTION);
		}
		FUNC12();
    		FUNC6(resultp1,resultp2,dstptr);
		return(NOEXCEPTION);
	}
	/*
	 * Generate result
	 */
	if (src_exponent >= 0) {
		/* 
		 * Check sign.
		 * If negative, trap unimplemented.
		 */
		if (FUNC5(srcp1)) {
			resultp1 = resultp2 = 0;
			if (FUNC10()) {
				return(INVALIDEXCEPTION);
			}
			FUNC12();
    			FUNC6(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
		FUNC0(srcp1);
		FUNC7(srcp1,srcp2,src_exponent,
		  resultp1,resultp2);
		FUNC6(resultp1,resultp2,dstptr);

		/* check for inexact */
		if (FUNC3(srcp1,srcp2,src_exponent)) {
			if (FUNC9()) return(INEXACTEXCEPTION);
			else FUNC11();
		}
	}
	else {
		FUNC8(resultp1,resultp2);
		FUNC6(resultp1,resultp2,dstptr);

		/* check for inexact */
		if (FUNC4(srcp1,srcp2)) {
			if (FUNC9()) return(INEXACTEXCEPTION);
			else FUNC11();
		}
	}
	return(NOEXCEPTION);
}