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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int INEXACTEXCEPTION ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC4 () ; 
 scalar_t__ SGL_BIAS ; 
 int SGL_EXP_LENGTH ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 

int
FUNC15(
		    int *srcptr,
		    unsigned int *nullptr,
		    sgl_floating_point *dstptr,
		    unsigned int *status)
{
	register int src, dst_exponent;
	register unsigned int result = 0;

	src = *srcptr;
	/* 
	 * set sign bit of result and get magnitude of source 
	 */
	if (src < 0) {
		FUNC12(result);  
		FUNC2(src);
	}
	else {
		FUNC14(result);
        	/* Check for zero */ 
        	if (src == 0) { 
                	FUNC13(result); 
			*dstptr = result;
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
	FUNC0(src,dst_exponent);
	/*  left justify source, with msb at bit position 1  */
	if (dst_exponent >= 0) src <<= dst_exponent;
	else src = 1 << 30;
	FUNC11(result, src >> (SGL_EXP_LENGTH-1));
	FUNC10(result, 30+SGL_BIAS - dst_exponent);

	/* check for inexact */
	if (FUNC1(src)) {
		switch (FUNC4()) {
			case ROUNDPLUS: 
				if (FUNC8(result)) 
					FUNC6(result);
				break;
			case ROUNDMINUS: 
				if (FUNC7(result)) 
					FUNC6(result);
				break;
			case ROUNDNEAREST:
				FUNC9(src,result);
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