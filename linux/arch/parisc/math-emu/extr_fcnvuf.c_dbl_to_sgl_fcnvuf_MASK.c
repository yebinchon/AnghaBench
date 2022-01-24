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
typedef  unsigned int sgl_floating_point ;
typedef  int /*<<< orphan*/  dbl_unsigned ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int INEXACTEXCEPTION ; 
 scalar_t__ FUNC3 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC4 () ; 
 scalar_t__ SGL_BIAS ; 
 unsigned int SGL_EXP_LENGTH ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,unsigned int,int,unsigned int) ; 

int
FUNC12(
			dbl_unsigned *srcptr,
			unsigned int *nullptr,
			sgl_floating_point *dstptr,
			unsigned int *status)
{
	int dst_exponent;
	unsigned int srcp1, srcp2, result = 0;

	FUNC0(srcptr,srcp1,srcp2);

	/* Check for zero */
	if (srcp1 == 0 && srcp2 == 0) {
	       	FUNC10(result);
	       	*dstptr = result;
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
		FUNC2(srcp2,dst_exponent);
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
		 *
		 */
		FUNC2(srcp1,dst_exponent);
		/*  left justify source, with msb at bit position 0  */
		if (dst_exponent >= 0) {
			FUNC11(srcp1,srcp2,(31-dst_exponent),
			 srcp1); 
			srcp2 <<= dst_exponent+1;
		}
	}
	FUNC9(result, srcp1 >> SGL_EXP_LENGTH);
	FUNC8(result, (62+SGL_BIAS) - dst_exponent);

	/* check for inexact */
	if (FUNC1(srcp1,srcp2)) {
		switch (FUNC4()) {
			case ROUNDPLUS: 
				FUNC6(result);
				break;
			case ROUNDMINUS: /* never negative */
				break;
			case ROUNDNEAREST:
				FUNC7(srcp1,srcp2,result);
				break;
		}
		if (FUNC3()) {
			*dstptr = result;
			return(INEXACTEXCEPTION);
		}
		else FUNC5();
	}
	*dstptr = result;
	return(NOEXCEPTION);
}