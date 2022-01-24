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
typedef  int /*<<< orphan*/  dbl_integer ;
typedef  int /*<<< orphan*/  dbl_floating_point ;

/* Variables and functions */
 int DBL_BIAS ; 
 int DBL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,unsigned int,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int,unsigned int) ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int NOEXCEPTION ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

int
FUNC16(
			dbl_floating_point *srcptr,
			unsigned int *nullptr,
			dbl_integer *dstptr,
			unsigned int *status)
{
	register int src_exponent, resultp1;
	register unsigned int srcp1, srcp2, tempp1, tempp2, resultp2;

	FUNC1(srcptr,srcp1,srcp2);
	src_exponent = FUNC2(srcp1) - DBL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > DBL_FX_MAX_EXP) {
		/* check for MININT */
		if ((src_exponent > DBL_FX_MAX_EXP + 1) || 
		FUNC5(srcp1,srcp2) || FUNC7(srcp1)) {
                        if (FUNC7(srcp1)) {
                              resultp1 = 0x7fffffff;
			      resultp2 = 0xffffffff;
			}
                        else {
			    resultp1 = 0x80000000; 
			    resultp2 = 0;
			}
	                if (FUNC13()) {
                            return(INVALIDEXCEPTION);
                        }
                        FUNC15();
    		        FUNC8(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
	}
	/*
	 * Generate result
	 */
	if (src_exponent >= 0) {
		tempp1 = srcp1;
		tempp2 = srcp2;
		FUNC0(tempp1);
		FUNC9(tempp1,tempp2,src_exponent,
		resultp1,resultp2);
		if (FUNC6(srcp1)) {
			FUNC10(resultp1,resultp2);
		}
		FUNC8(resultp1,resultp2,dstptr);

		/* check for inexact */
		if (FUNC3(srcp1,srcp2,src_exponent)) {
			if (FUNC12()) return(INEXACTEXCEPTION);
			else FUNC14();
		}
	}
	else {
		FUNC11(resultp1,resultp2);
		FUNC8(resultp1,resultp2,dstptr);

		/* check for inexact */
		if (FUNC4(srcp1,srcp2)) {
			if (FUNC12()) return(INEXACTEXCEPTION);
			else FUNC14();
		}
	}
	return(NOEXCEPTION);
}