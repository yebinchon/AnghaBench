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
 scalar_t__ DBL_BIAS ; 
 int DBL_EXP_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,unsigned int) ; 
 scalar_t__ FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int INEXACTEXCEPTION ; 
 scalar_t__ FUNC14 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int,unsigned int,int,int) ; 

int
FUNC19(
		    dbl_integer *srcptr,
		    unsigned int *nullptr,
		    dbl_floating_point *dstptr,
		    unsigned int *status)
{
	register int srcp1, dst_exponent;
	register unsigned int srcp2, resultp1 = 0, resultp2 = 0;

	FUNC10(srcptr,srcp1,srcp2);
	/* 
	 * set sign bit of result and get magnitude of source 
	 */
	if (srcp1 < 0) {
		FUNC7(resultp1);
		FUNC12(srcp1,srcp2);
	}
	else {
		FUNC9(resultp1);
        	/* Check for zero */
        	if (srcp1 == 0 && srcp2 ==0) {
                	FUNC8(resultp1,resultp2);
                	FUNC0(resultp1,resultp2,dstptr);
                	return(NOEXCEPTION);
		}
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
		FUNC13(srcp2,dst_exponent);
		/*  left justify source, with msb at bit position 1  */
		if (dst_exponent >= 0) {
			srcp1 = srcp2 << dst_exponent;    
			srcp2 = 0;
		}
		else {
			srcp1 = srcp2 >> 1;
			srcp2 <<= 31;
		}
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
		FUNC13(srcp1,dst_exponent);
		/*  left justify source, with msb at bit position 1  */
		if (dst_exponent > 0) {
			FUNC18(srcp1,srcp2,(32-dst_exponent),
			 srcp1); 
			srcp2 <<= dst_exponent;
		}
		/*
		 * If dst_exponent = 0, we don't need to shift anything.
		 * If dst_exponent = -1, src = - 2**63 so we won't need to 
		 * shift srcp2.
		 */
		else srcp1 >>= -(dst_exponent);
	}
	FUNC6(resultp1, srcp1 >> (DBL_EXP_LENGTH-1));
	FUNC17(srcp1,srcp2,DBL_EXP_LENGTH-1,resultp2);
	FUNC5(resultp1, (62+DBL_BIAS) - dst_exponent);

	/* check for inexact */
	if (FUNC11(srcp2)) {
		switch (FUNC15()) {
			case ROUNDPLUS: 
				if (FUNC3(resultp1)) {
					FUNC1(resultp1,resultp2);
				}
				break;
			case ROUNDMINUS: 
				if (FUNC2(resultp1)) {
					FUNC1(resultp1,resultp2);
				}
				break;
			case ROUNDNEAREST:
				FUNC4(srcp2,resultp1,
				resultp2);
		}
		if (FUNC14()) {
			FUNC0(resultp1,resultp2,dstptr);
			return(INEXACTEXCEPTION);
		}
		else FUNC16();
	}
	FUNC0(resultp1,resultp2,dstptr);
	return(NOEXCEPTION);
}