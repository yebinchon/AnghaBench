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
typedef  int /*<<< orphan*/  dbl_integer ;
typedef  scalar_t__ boolean ;

/* Variables and functions */
 int DBL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned int) ; 
 scalar_t__ FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC10 () ; 
 int SGL_BIAS ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int FUNC14 (unsigned int) ; 
 scalar_t__ FUNC15 (unsigned int,int) ; 
 scalar_t__ FUNC16 (unsigned int) ; 
 scalar_t__ FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int,int) ; 
 scalar_t__ FUNC19 (unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int,int) ; 
 scalar_t__ FUNC21 (unsigned int) ; 
 scalar_t__ TRUE ; 

int
FUNC22(
		sgl_floating_point *srcptr,
		unsigned int *nullptr,
		dbl_integer *dstptr,
		unsigned int *status)
{
	register int src_exponent, resultp1;
	register unsigned int src, temp, resultp2;
	register boolean inexact = FALSE;

	src = *srcptr;
	src_exponent = FUNC14(src) - SGL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > DBL_FX_MAX_EXP) {
		/* check for MININT */
		if ((src_exponent > DBL_FX_MAX_EXP + 1) || 
		FUNC17(src) || FUNC21(src)) {
                        if (FUNC21(src)) {
                              resultp1 = 0x7fffffff;
			      resultp2 = 0xffffffff;
			}
                        else {
			    resultp1 = 0x80000000; 
			    resultp2 = 0;
			}
	                if (FUNC9()) {
                            return(INVALIDEXCEPTION);
                        }
                        FUNC12();
    		        FUNC0(resultp1,resultp2,dstptr);
			return(NOEXCEPTION);
		}
		FUNC5(resultp1,resultp2);
		FUNC0(resultp1,resultp2,dstptr);
		return(NOEXCEPTION);
	}
	/*
	 * Generate result
	 */
	if (src_exponent >= 0) {
		temp = src;
		FUNC13(temp);
		FUNC2(temp,src_exponent,resultp1,resultp2);
		if (FUNC19(src)) {
			FUNC6(resultp1,resultp2);
		}

		/* check for inexact */
		if (FUNC15(src,src_exponent)) {
			inexact = TRUE;
                        /*  round result  */
                        switch (FUNC10()) {
                        case ROUNDPLUS:
                             if (FUNC21(src)) {
				FUNC3(resultp1,resultp2);
			     }
                             break;
                        case ROUNDMINUS:
                             if (FUNC19(src)) {
				FUNC1(resultp1,resultp2);
			     }
                             break;
                        case ROUNDNEAREST:
                             if (FUNC18(src,src_exponent))
                                if (FUNC20(src,src_exponent) || 
				(FUNC4(resultp2)))
				   if (FUNC21(src)) {
				      FUNC3(resultp1,resultp2);
				   }
                                   else {
				      FUNC1(resultp1,resultp2);
				   }
                        }
                }
        }
	else {
		FUNC7(resultp1,resultp2);

		/* check for inexact */
		if (FUNC16(src)) {
			inexact = TRUE;
                        /*  round result  */
                        switch (FUNC10()) {
                        case ROUNDPLUS:
                             if (FUNC21(src)) {
				FUNC3(resultp1,resultp2);
			     }
                             break;
                        case ROUNDMINUS:
                             if (FUNC19(src)) {
				FUNC1(resultp1,resultp2);
			     }
                             break;
                        case ROUNDNEAREST:
                             if (src_exponent == -1)
                                if (FUNC17(src))
                                   if (FUNC21(src)) {
				      FUNC3(resultp1,resultp2);
				   }
                                   else {
				      FUNC1(resultp1,resultp2);
				   }
			}
		}
	}
	FUNC0(resultp1,resultp2,dstptr);
	if (inexact) {
		if (FUNC8()) return(INEXACTEXCEPTION);
		else FUNC11();
	}
	return(NOEXCEPTION);
}