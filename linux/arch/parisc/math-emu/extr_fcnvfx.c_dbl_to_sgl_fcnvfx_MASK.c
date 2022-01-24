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
typedef  scalar_t__ boolean ;

/* Variables and functions */
 int DBL_BIAS ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC11 (int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC12 (unsigned int) ; 
 scalar_t__ FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,unsigned int,int) ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int NOEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC16 () ; 
 int SGL_FX_MAX_EXP ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 scalar_t__ TRUE ; 

int
FUNC19(
		    dbl_floating_point *srcptr,
		    unsigned int *nullptr,
		    int *dstptr,
		    unsigned int *status)
{
	register unsigned int srcp1,srcp2, tempp1,tempp2;
	register int src_exponent, result;
	register boolean inexact = FALSE;

	FUNC2(srcptr,srcp1,srcp2);
	src_exponent = FUNC3(srcp1) - DBL_BIAS;

	/* 
	 * Test for overflow
	 */
	if (src_exponent > SGL_FX_MAX_EXP) {
		/* check for MININT */
		if (FUNC11(src_exponent,srcp1,srcp2)) {
                        if (FUNC12(srcp1)) result = 0x7fffffff;
                        else result = 0x80000000; 

	                if (FUNC15()) {
                            return(INVALIDEXCEPTION);
                        }
                        FUNC18();
			*dstptr = result;
			return(NOEXCEPTION);
		}
	}
	/*
	 * Generate result
	 */
	if (src_exponent >= 0) {
		tempp1 = srcp1;
		tempp2 = srcp2;
		FUNC1(tempp1);
		FUNC13(tempp1,tempp2,src_exponent);
		if (FUNC9(srcp1) && (src_exponent <= SGL_FX_MAX_EXP))
			result = -FUNC0(tempp1);
		else result = FUNC0(tempp1);

		/* check for inexact */
		if (FUNC4(srcp1,srcp2,src_exponent)) {
                        inexact = TRUE;
                        /*  round result  */
                        switch (FUNC16()) {
                        case ROUNDPLUS:
                             if (FUNC12(srcp1)) result++;
                             break;
                        case ROUNDMINUS:
                             if (FUNC9(srcp1)) result--;
                             break;
                        case ROUNDNEAREST:
                             if (FUNC8(srcp1,srcp2,src_exponent))
                                if (FUNC10(srcp1,srcp2,src_exponent) || 
				(FUNC7(tempp1)))
                                   if (FUNC12(srcp1)) result++;
                                   else result--;
                        } 
			/* check for overflow */
			if ((FUNC12(srcp1) && result < 0) ||
			    (FUNC9(srcp1) && result > 0)) {
			        
                          if (FUNC12(srcp1)) result = 0x7fffffff;
                          else result = 0x80000000; 

	                  if (FUNC15()) {
                            return(INVALIDEXCEPTION);
                          }
                          FUNC18();
			  *dstptr = result;
			  return(NOEXCEPTION);
			}
                }
	}
	else {
		result = 0;

		/* check for inexact */
		if (FUNC5(srcp1,srcp2)) {
                        inexact = TRUE;
                        /*  round result  */
                        switch (FUNC16()) {
                        case ROUNDPLUS:
                             if (FUNC12(srcp1)) result++;
                             break;
                        case ROUNDMINUS:
                             if (FUNC9(srcp1)) result--;
                             break;
                        case ROUNDNEAREST:
                             if (src_exponent == -1)
                                if (FUNC6(srcp1,srcp2))
                                   if (FUNC12(srcp1)) result++;
                                   else result--;
			}
                }
	}
	*dstptr = result;
        if (inexact) {
                if (FUNC14()) return(INEXACTEXCEPTION);
		else FUNC17();
        }
	return(NOEXCEPTION);
}