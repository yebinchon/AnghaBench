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
typedef  int /*<<< orphan*/  dbl_floating_point ;

/* Variables and functions */
 scalar_t__ DBL_BIAS ; 
 int DBL_EXP_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int NOEXCEPTION ; 

int
FUNC9(
		    int *srcptr,
		    unsigned int *nullptr,
		    dbl_floating_point *dstptr,
		    unsigned int *status)
{
	register int src, dst_exponent;
	register unsigned int resultp1 = 0, resultp2 = 0;

	src = *srcptr;
	/* 
	 * set sign bit of result and get magnitude of source 
	 */
	if (src < 0) {
		FUNC4(resultp1);  
		FUNC8(src);
	}
	else {
		FUNC6(resultp1);
        	/* Check for zero */
        	if (src == 0) {
                	FUNC5(resultp1,resultp2);
                	FUNC0(resultp1,resultp2,dstptr);
                	return(NOEXCEPTION);
        	}
	}
	/*
	 * Generate exponent and normalized mantissa
	 */
	dst_exponent = 16;    /* initialize for normalization */
	/*
	 * Check word for most significant bit set.  Returns
	 * a value in dst_exponent indicating the bit position,
	 * between -1 and 30.
	 */
	FUNC7(src,dst_exponent);
	/*  left justify source, with msb at bit position 1  */
	if (dst_exponent >= 0) src <<= dst_exponent;
	else src = 1 << 30;
	FUNC2(resultp1, src >> (DBL_EXP_LENGTH - 1));
	FUNC3(resultp2, src << (33-DBL_EXP_LENGTH));
	FUNC1(resultp1, (30+DBL_BIAS) - dst_exponent);
	FUNC0(resultp1,resultp2,dstptr);
	return(NOEXCEPTION);
}