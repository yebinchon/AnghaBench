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
 int DBL_INFINITY_EXPONENT ; 
 int DBL_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,unsigned int,int,unsigned int) ; 
 int FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 scalar_t__ FUNC15 (unsigned int) ; 
 scalar_t__ FUNC16 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC17 (unsigned int) ; 
 scalar_t__ FUNC18 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC19 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC20 (unsigned int) ; 
 scalar_t__ FUNC21 (unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int) ; 
 scalar_t__ FUNC24 (unsigned int) ; 
 scalar_t__ FUNC25 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC26 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC27 (unsigned int) ; 
 scalar_t__ FUNC28 (unsigned int) ; 
 scalar_t__ FUNC29 (unsigned int) ; 
 scalar_t__ FUNC30 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC31 (unsigned int) ; 
 int /*<<< orphan*/  FUNC32 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC33 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC34 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC35 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC36 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC37 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC38 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC39 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC40 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC41 (unsigned int,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC42 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC43 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC44 (unsigned int) ; 
 int /*<<< orphan*/  FUNC45 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC46 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC47 (unsigned int) ; 
 int /*<<< orphan*/  FUNC48 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC49 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (unsigned int) ; 
 int FUNC51 (unsigned int) ; 
 int /*<<< orphan*/  FUNC52 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC53 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC54 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC55 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC56 (unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC57 (unsigned int) ; 
 int /*<<< orphan*/  FUNC58 (unsigned int) ; 
 int /*<<< orphan*/  FUNC59 (unsigned int) ; 
 int /*<<< orphan*/  FUNC60 (unsigned int) ; 
 scalar_t__ FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC61 () ; 
 scalar_t__ FUNC62 () ; 
 scalar_t__ FUNC63 () ; 
 scalar_t__ FUNC64 (int) ; 
 scalar_t__ FUNC65 () ; 
 int NOEXCEPTION ; 
 int OVERFLOWEXCEPTION ; 
#define  ROUNDMINUS 131 
#define  ROUNDNEAREST 130 
#define  ROUNDPLUS 129 
#define  ROUNDZERO 128 
 int FUNC66 () ; 
 int /*<<< orphan*/  FUNC67 () ; 
 int /*<<< orphan*/  FUNC68 () ; 
 int /*<<< orphan*/  FUNC69 () ; 
 scalar_t__ TRUE ; 
 int UNDERFLOWEXCEPTION ; 
 int /*<<< orphan*/  ovfl ; 
 int /*<<< orphan*/  unfl ; 

int
FUNC70(
	    dbl_floating_point *leftptr,
	    dbl_floating_point *rightptr,
	    dbl_floating_point *dstptr,
	    unsigned int *status)
    {
    register unsigned int signless_upper_left, signless_upper_right, save;
    register unsigned int leftp1, leftp2, rightp1, rightp2, extent;
    register unsigned int resultp1 = 0, resultp2 = 0;
    
    register int result_exponent, right_exponent, diff_exponent;
    register int sign_save, jumpsize;
    register boolean inexact = FALSE, underflowtrap;
        
    /* Create local copies of the numbers */
    FUNC7(leftptr,leftp1,leftp2);
    FUNC7(rightptr,rightp1,rightp2);

    /* A zero "save" helps discover equal operands (for later),  *
     * and is used in swapping operands (if needed).             */
    FUNC56(leftp1,rightp1,/*to*/save);

    /*
     * check first operand for NaN's or infinity
     */
    if ((result_exponent = FUNC10(leftp1)) == DBL_INFINITY_EXPONENT)
	{
	if (FUNC30(leftp1,leftp2)) 
	    {
	    if (FUNC19(rightp1,rightp2)) 
		{
		if (FUNC16(rightp1,rightp2) && save==0) 
		    {
		    /* 
		     * invalid since operands are same signed infinity's
		     */
		    if (FUNC62()) return(INVALIDEXCEPTION);
                    FUNC68();
                    FUNC38(resultp1,resultp2);
		    FUNC9(resultp1,resultp2,dstptr);
		    return(NOEXCEPTION);
		    }
		/*
	 	 * return infinity
	 	 */
		FUNC9(leftp1,leftp2,dstptr);
		return(NOEXCEPTION);
		}
	    }
	else 
	    {
            /*
             * is NaN; signaling or quiet?
             */
            if (FUNC24(leftp1)) 
		{
               	/* trap if INVALIDTRAP enabled */
		if (FUNC62()) return(INVALIDEXCEPTION);
        	/* make NaN quiet */
        	FUNC68();
        	FUNC44(leftp1);
        	}
	    /* 
	     * is second operand a signaling NaN? 
	     */
	    else if (FUNC15(rightp1)) 
		{
        	/* trap if INVALIDTRAP enabled */
               	if (FUNC62()) return(INVALIDEXCEPTION);
		/* make NaN quiet */
		FUNC68();
		FUNC44(rightp1);
		FUNC9(rightp1,rightp2,dstptr);
		return(NOEXCEPTION);
		}
	    /*
 	     * return quiet NaN
 	     */
	    FUNC9(leftp1,leftp2,dstptr);
 	    return(NOEXCEPTION);
	    }
	} /* End left NaN or Infinity processing */
    /*
     * check second operand for NaN's or infinity
     */
    if (FUNC17(rightp1)) 
	{
	if (FUNC30(rightp1,rightp2)) 
	    {
	    /* return infinity */
	    FUNC14(rightp1);
	    FUNC9(rightp1,rightp2,dstptr);
	    return(NOEXCEPTION);
	    }
        /*
         * is NaN; signaling or quiet?
         */
        if (FUNC24(rightp1)) 
	    {
            /* trap if INVALIDTRAP enabled */
	    if (FUNC62()) return(INVALIDEXCEPTION);
	    /* make NaN quiet */
	    FUNC68();
	    FUNC44(rightp1);
	    }
	/*
	 * return quiet NaN
 	 */
	FUNC9(rightp1,rightp2,dstptr);
	return(NOEXCEPTION);
    	} /* End right NaN or Infinity processing */

    /* Invariant: Must be dealing with finite numbers */

    /* Compare operands by removing the sign */
    FUNC8(leftp1,signless_upper_left);
    FUNC8(rightp1,signless_upper_right);

    /* sign difference selects add or sub operation. */
    if(FUNC18(leftp2,rightp2,signless_upper_left,signless_upper_right))
	{
	/* Set the left operand to the larger one by XOR swap *
	 *  First finish the first word using "save"          */
	FUNC55(save,rightp1,/*to*/rightp1);
	FUNC55(save,leftp1,/*to*/leftp1);
     	FUNC54(leftp2,rightp2);
	result_exponent = FUNC10(leftp1);
	FUNC14(leftp1);
	}
    /* Invariant:  left is not smaller than right. */ 

    if((right_exponent = FUNC10(rightp1)) == 0)
        {
	/* Denormalized operands.  First look for zeroes */
	if(FUNC30(rightp1,rightp2)) 
	    {
	    /* right is zero */
	    if(FUNC26(leftp1,leftp2))
		{
		/* Both operands are zeros */
		FUNC14(rightp1);
		if(FUNC64(ROUNDMINUS))
		    {
		    FUNC40(leftp1,/*with*/rightp1);
		    }
		else
		    {
		    FUNC1(leftp1,/*with*/rightp1);
		    }
		}
	    else 
		{
		/* Left is not a zero and must be the result.  Trapped
		 * underflows are signaled if left is denormalized.  Result
		 * is always exact. */
		if( (result_exponent == 0) && FUNC65() )
		    {
		    /* need to normalize results mantissa */
	    	    sign_save = FUNC51(leftp1);
		    FUNC32(leftp1,leftp2);
		    FUNC39(leftp1,leftp2,result_exponent);
		    FUNC45(leftp1,/*using*/sign_save);
                    FUNC49(leftp1,result_exponent,unfl);
		    FUNC9(leftp1,leftp2,dstptr);
		    /* inexact = FALSE */
		    return(UNDERFLOWEXCEPTION);
		    }
		}
	    FUNC9(leftp1,leftp2,dstptr);
	    return(NOEXCEPTION);
	    }

	/* Neither are zeroes */
	FUNC4(rightp1);	/* Exponent is already cleared */
	if(result_exponent == 0 )
	    {
	    /* Both operands are denormalized.  The result must be exact
	     * and is simply calculated.  A sum could become normalized and a
	     * difference could cancel to a true zero. */
	    if( (/*signed*/int) save >= 0 )
		{
		FUNC52(leftp1,leftp2,/*minus*/rightp1,rightp2,
		 /*into*/resultp1,resultp2);
		if(FUNC30(resultp1,resultp2))
		    {
		    if(FUNC64(ROUNDMINUS))
			{
			FUNC47(resultp1);
			}
		    else
			{
			FUNC50(resultp1);
			}
		    FUNC9(resultp1,resultp2,dstptr);
		    return(NOEXCEPTION);
		    }
		}
	    else
		{
		FUNC0(leftp1,leftp2,rightp1,rightp2,
		 /*into*/resultp1,resultp2);
		if(FUNC20(resultp1))
		    {
		    FUNC9(resultp1,resultp2,dstptr);
		    return(NOEXCEPTION);
		    }
		}
	    if(FUNC65())
		{
		/* need to normalize result */
	    	sign_save = FUNC51(resultp1);
		FUNC32(resultp1,resultp2);
		FUNC39(resultp1,resultp2,result_exponent);
		FUNC45(resultp1,/*using*/sign_save);
                FUNC49(resultp1,result_exponent,unfl);
		FUNC9(resultp1,resultp2,dstptr);
		/* inexact = FALSE */
		return(UNDERFLOWEXCEPTION);
		}
	    FUNC9(resultp1,resultp2,dstptr);
	    return(NOEXCEPTION);
	    }
	right_exponent = 1;	/* Set exponent to reflect different bias
				 * with denomalized numbers. */
	}
    else
	{
	FUNC6(rightp1);
	}
    FUNC3(leftp1);
    diff_exponent = result_exponent - right_exponent;

    /* 
     * Special case alignment of operands that would force alignment 
     * beyond the extent of the extension.  A further optimization
     * could special case this but only reduces the path length for this
     * infrequent case.
     */
    if(diff_exponent > DBL_THRESHOLD)
	{
	diff_exponent = DBL_THRESHOLD;
	}
    
    /* Align right operand by shifting to right */
    FUNC41(/*operand*/rightp1,rightp2,/*shifted by*/diff_exponent,
     /*and lower to*/extent);

    /* Treat sum and difference of the operands separately. */
    if( (/*signed*/int) save >= 0 )
	{
	/*
	 * Difference of the two operands.  Their can be no overflow.  A
	 * borrow can occur out of the hidden bit and force a post
	 * normalization phase.
	 */
	FUNC53(leftp1,leftp2,/*minus*/rightp1,rightp2,
	 /*with*/extent,/*into*/resultp1,resultp2);
	if(FUNC27(resultp1))
	    {
	    /* Handle normalization */
	    /* A straight forward algorithm would now shift the result
	     * and extension left until the hidden bit becomes one.  Not
	     * all of the extension bits need participate in the shift.
	     * Only the two most significant bits (round and guard) are
	     * needed.  If only a single shift is needed then the guard
	     * bit becomes a significant low order bit and the extension
	     * must participate in the rounding.  If more than a single 
	     * shift is needed, then all bits to the right of the guard 
	     * bit are zeros, and the guard bit may or may not be zero. */
	    sign_save = FUNC51(resultp1);
            FUNC33(resultp1,resultp2,extent,resultp1,resultp2);

            /* Need to check for a zero result.  The sign and exponent
	     * fields have already been zeroed.  The more efficient test
	     * of the full object can be used.
	     */
    	    if(FUNC25(resultp1,resultp2))
		/* Must have been "x-x" or "x+(-x)". */
		{
		if(FUNC64(ROUNDMINUS)) FUNC47(resultp1);
		FUNC9(resultp1,resultp2,dstptr);
		return(NOEXCEPTION);
		}
	    result_exponent--;
	    /* Look to see if normalization is finished. */
	    if(FUNC20(resultp1))
		{
		if(result_exponent==0)
		    {
		    /* Denormalized, exponent should be zero.  Left operand *
		     * was normalized, so extent (guard, round) was zero    */
		    goto underflow;
		    }
		else
		    {
		    /* No further normalization is needed. */
		    FUNC45(resultp1,/*using*/sign_save);
	    	    FUNC60(extent);
		    goto round;
		    }
		}

	    /* Check for denormalized, exponent should be zero.  Left    *
	     * operand was normalized, so extent (guard, round) was zero */
	    if(!(underflowtrap = FUNC65()) &&
	       result_exponent==0) goto underflow;

	    /* Shift extension to complete one bit of normalization and
	     * update exponent. */
	    FUNC60(extent);

	    /* Discover first one bit to determine shift amount.  Use a
	     * modified binary search.  We have already shifted the result
	     * one position right and still not found a one so the remainder
	     * of the extension must be zero and simplifies rounding. */
	    /* Scan bytes */
	    while(FUNC29(resultp1))
		{
		FUNC37(resultp1,resultp2);
		if((result_exponent -= 8) <= 0  && !underflowtrap)
		    goto underflow;
		}
	    /* Now narrow it down to the nibble */
	    if(FUNC28(resultp1))
		{
		/* The lower nibble contains the normalizing one */
		FUNC36(resultp1,resultp2);
		if((result_exponent -= 4) <= 0 && !underflowtrap)
		    goto underflow;
		}
	    /* Select case were first bit is set (already normalized)
	     * otherwise select the proper shift. */
	    if((jumpsize = FUNC12(resultp1)) > 7)
		{
		/* Already normalized */
		if(result_exponent <= 0) goto underflow;
		FUNC45(resultp1,/*using*/sign_save);
		FUNC43(resultp1,/*using*/result_exponent);
		FUNC9(resultp1,resultp2,dstptr);
		return(NOEXCEPTION);
		}
	    FUNC46(resultp1,/*using*/sign_save);
	    switch(jumpsize) 
		{
		case 1:
		    {
		    FUNC35(resultp1,resultp2);
		    result_exponent -= 3;
		    break;
		    }
		case 2:
		case 3:
		    {
		    FUNC34(resultp1,resultp2);
		    result_exponent -= 2;
		    break;
		    }
		case 4:
		case 5:
		case 6:
		case 7:
		    {
		    FUNC32(resultp1,resultp2);
		    result_exponent -= 1;
		    break;
		    }
		}
	    if(result_exponent > 0) 
		{
		FUNC43(resultp1,/*using*/result_exponent);
		FUNC9(resultp1,resultp2,dstptr);
		return(NOEXCEPTION);		/* Sign bit is already set */
		}
	    /* Fixup potential underflows */
	  underflow:
	    if(FUNC65())
		{
		FUNC45(resultp1,sign_save);
                FUNC49(resultp1,result_exponent,unfl);
		FUNC9(resultp1,resultp2,dstptr);
		/* inexact = FALSE */
		return(UNDERFLOWEXCEPTION);
		}
	    /* 
	     * Since we cannot get an inexact denormalized result,
	     * we can now return.
	     */
	    FUNC11(resultp1,resultp2,(1-result_exponent),extent);
	    FUNC5(resultp1);
	    FUNC45(resultp1,sign_save);
	    FUNC9(resultp1,resultp2,dstptr);
	    return(NOEXCEPTION);
	    } /* end if(hidden...)... */
	/* Fall through and round */
	} /* end if(save >= 0)... */
    else 
	{
	/* Subtract magnitudes */
	FUNC0(leftp1,leftp2,rightp1,rightp2,/*to*/resultp1,resultp2);
	if(FUNC21(resultp1))
	    {
	    /* Prenormalization required. */
	    FUNC42(resultp2,extent,extent);
	    FUNC2(resultp1,resultp2);
	    result_exponent++;
	    } /* end if hiddenoverflow... */
	} /* end else ...subtract magnitudes... */
    
    /* Round the result.  If the extension is all zeros,then the result is
     * exact.  Otherwise round in the correct direction.  No underflow is
     * possible. If a postnormalization is necessary, then the mantissa is
     * all zeros so no shift is needed. */
  round:
    if(FUNC57(extent))
	{
	inexact = TRUE;
	switch(FUNC66())
	    {
	    case ROUNDNEAREST: /* The default. */
	    if(FUNC59(extent))
		{
		/* at least 1/2 ulp */
		if(FUNC58(extent)  ||
		  FUNC22(resultp2))
		    {
		    /* either exactly half way and odd or more than 1/2ulp */
		    FUNC13(resultp1,resultp2);
		    }
		}
	    break;

	    case ROUNDPLUS:
	    if(FUNC31(resultp1))
		{
		/* Round up positive results */
		FUNC13(resultp1,resultp2);
		}
	    break;
	    
	    case ROUNDMINUS:
	    if(FUNC23(resultp1))
		{
		/* Round down negative results */
		FUNC13(resultp1,resultp2);
		}
	    
	    case ROUNDZERO:;
	    /* truncate is simple */
	    } /* end switch... */
	if(FUNC21(resultp1)) result_exponent++;
	}
    if(result_exponent == DBL_INFINITY_EXPONENT)
        {
        /* Overflow */
        if(FUNC63())
	    {
	    FUNC49(resultp1,result_exponent,ovfl);
	    FUNC9(resultp1,resultp2,dstptr);
	    if (inexact)
	    if (FUNC61())
		return(OVERFLOWEXCEPTION | INEXACTEXCEPTION);
		else FUNC67();
	    return(OVERFLOWEXCEPTION);
	    }
        else
	    {
	    inexact = TRUE;
	    FUNC69();
	    FUNC48(resultp1,resultp2);
	    }
	}
    else FUNC43(resultp1,result_exponent);
    FUNC9(resultp1,resultp2,dstptr);
    if(inexact) 
	if(FUNC61()) return(INEXACTEXCEPTION);
	else FUNC67();
    return(NOEXCEPTION);
    }