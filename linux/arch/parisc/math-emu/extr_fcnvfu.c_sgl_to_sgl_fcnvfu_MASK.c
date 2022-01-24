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
typedef  scalar_t__ boolean ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC2 () ; 
 int SGL_BIAS ; 
 int SGL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (unsigned int,int) ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,int) ; 
 scalar_t__ FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,int,unsigned int) ; 
 scalar_t__ TRUE ; 

int
FUNC15(
			sgl_floating_point *srcptr,
			unsigned int *nullptr,
			unsigned int *dstptr,
			unsigned int *status)
{
	register unsigned int src, result;
	register int src_exponent;
	register boolean inexact = FALSE;

	src = *srcptr;
	src_exponent = FUNC6(src) - SGL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > SGL_FX_MAX_EXP + 1) {
		if (FUNC11(src)) {
			result = 0;
		} else {
			result = 0xffffffff;
		}
		if (FUNC1()) {
			return(INVALIDEXCEPTION);
		}
		FUNC4();
		*dstptr = result;
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
		if (FUNC11(src)) {
			result = 0;
			if (FUNC1()) {
				return(INVALIDEXCEPTION);
			}
			FUNC4();
			*dstptr = result;
			return(NOEXCEPTION);
		}
		FUNC5(src);
		FUNC14(src,src_exponent,result);

		/* check for inexact */
		if (FUNC7(src,src_exponent)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC2()) {
			case ROUNDPLUS:
				result++;
				break;
			case ROUNDMINUS: /* never negative */
				break;
			case ROUNDNEAREST:
				if (FUNC10(src,src_exponent) &&
				    (FUNC12(src,src_exponent) ||
				     (result & 1))) {
			     		result++;
				}
				break;
			}
		}
	} else {
		result = 0;

		/* check for inexact */
		if (FUNC8(src)) {
			inexact = TRUE;
			/*  round result  */
			switch (FUNC2()) {
			case ROUNDPLUS:
				if (FUNC13(src)) {
					result++;
				}
				break;
			case ROUNDMINUS:
				if (FUNC11(src)) {
					result = 0;
					if (FUNC1()) {
						return(INVALIDEXCEPTION);
					}
					FUNC4();
					inexact = FALSE;
				}
				break;
			case ROUNDNEAREST:
				if (src_exponent == -1 &&
				    FUNC9(src)) {
					if (FUNC11(src)) {
						result = 0;
						if (FUNC1()) {
							return(INVALIDEXCEPTION);
						}
						FUNC4();
						inexact = FALSE;
					}
			      		else result++;
				}
				break;
			}
		}
	}
	*dstptr = result;
	if (inexact) {
		if (FUNC0()) return(INEXACTEXCEPTION);
		else FUNC3();
	}
	return(NOEXCEPTION);
}