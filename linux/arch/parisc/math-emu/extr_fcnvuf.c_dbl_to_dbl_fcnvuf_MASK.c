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
 scalar_t__ DBL_BIAS ; 
 unsigned int DBL_EXP_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int) ; 
 int INEXACTEXCEPTION ; 
 scalar_t__ FUNC9 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,unsigned int,int,unsigned int) ; 

int
FUNC14(
		    dbl_unsigned *srcptr,
		    unsigned int *nullptr,
		    dbl_floating_point *dstptr,
		    unsigned int *status)
{
	register int dst_exponent;
	register unsigned int srcp1, srcp2, resultp1 = 0, resultp2 = 0;

	FUNC6(srcptr,srcp1,srcp2);

	/* Check for zero */
	if (srcp1 == 0 && srcp2 ==0) {
	       	FUNC5(resultp1,resultp2);
	       	FUNC0(resultp1,resultp2,dstptr);
	       	return(NOEXCEPTION);
	}
	/*
	 * Generate exponent and normalized mantissa
	 */
	dst_exponent = 16;    /* initialize for normalization */
	if (srcp1 == 0) {
		/*
		 * Check word for most significant bit set.  Returns
		 * a value in dst_exponent indicating the bit position,
		 * between -1 and 30.
		 */
		FUNC8(srcp2,dst_exponent);
		/*  left justify source, with msb at bit position 0  */
		srcp1 = srcp2 << (dst_exponent+1);
		srcp2 = 0;
		/*
		 *  since msb set is in second word, need to 
		 *  adjust bit position count
		 */
		dst_exponent += 32;
	}
	else {
		/*
		 * Check word for most significant bit set.  Returns
		 * a value in dst_exponent indicating the bit position,
		 * between -1 and 30.
		 */
		FUNC8(srcp1,dst_exponent);
		/*  left justify source, with msb at bit position 0  */
		if (dst_exponent >= 0) {
			FUNC13(srcp1,srcp2,(31-dst_exponent),
			 srcp1); 
			srcp2 <<= dst_exponent+1;
		}
	}
	FUNC4(resultp1, srcp1 >> DBL_EXP_LENGTH);
	FUNC12(srcp1,srcp2,DBL_EXP_LENGTH,resultp2);
	FUNC3(resultp1, (62+DBL_BIAS) - dst_exponent);

	/* check for inexact */
	if (FUNC7(srcp2)) {
		switch (FUNC10()) {
			case ROUNDPLUS: 
				FUNC1(resultp1,resultp2);
				break;
			case ROUNDMINUS: /* never negative */
				break;
			case ROUNDNEAREST:
				FUNC2(srcp2,resultp1,
				resultp2);
				break;
		}
		if (FUNC9()) {
			FUNC0(resultp1,resultp2,dstptr);
			return(INEXACTEXCEPTION);
		}
		else FUNC11();
	}
	FUNC0(resultp1,resultp2,dstptr);
	return(NOEXCEPTION);
}