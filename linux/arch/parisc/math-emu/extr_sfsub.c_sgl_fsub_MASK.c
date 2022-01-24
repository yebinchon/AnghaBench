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
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 () ; 
 int NOEXCEPTION ; 
 int OVERFLOWEXCEPTION ; 
#define  ROUNDMINUS 131 
#define  ROUNDNEAREST 130 
#define  ROUNDPLUS 129 
#define  ROUNDZERO 128 
 int FUNC9 () ; 
 int SGL_INFINITY_EXPONENT ; 
 int SGL_THRESHOLD ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned int,unsigned int) ; 
 int FUNC21 (unsigned int) ; 
 int FUNC22 (unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (unsigned int) ; 
 scalar_t__ FUNC25 (unsigned int) ; 
 scalar_t__ FUNC26 (unsigned int) ; 
 scalar_t__ FUNC27 (unsigned int) ; 
 scalar_t__ FUNC28 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC29 (unsigned int) ; 
 scalar_t__ FUNC30 (unsigned int) ; 
 scalar_t__ FUNC31 (unsigned int) ; 
 int /*<<< orphan*/  FUNC32 (unsigned int) ; 
 int /*<<< orphan*/  FUNC33 (unsigned int) ; 
 scalar_t__ FUNC34 (unsigned int) ; 
 scalar_t__ FUNC35 (unsigned int) ; 
 scalar_t__ FUNC36 (unsigned int) ; 
 scalar_t__ FUNC37 (unsigned int) ; 
 scalar_t__ FUNC38 (unsigned int) ; 
 scalar_t__ FUNC39 (unsigned int) ; 
 scalar_t__ FUNC40 (unsigned int) ; 
 int /*<<< orphan*/  FUNC41 (unsigned int) ; 
 int /*<<< orphan*/  FUNC42 (unsigned int) ; 
 int /*<<< orphan*/  FUNC43 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC44 (unsigned int) ; 
 int /*<<< orphan*/  FUNC45 (unsigned int) ; 
 int /*<<< orphan*/  FUNC46 (unsigned int) ; 
 int /*<<< orphan*/  FUNC47 (unsigned int) ; 
 int /*<<< orphan*/  FUNC48 (unsigned int) ; 
 int /*<<< orphan*/  FUNC49 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC50 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC51 (unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC52 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC53 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC54 (unsigned int) ; 
 int /*<<< orphan*/  FUNC55 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC56 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC57 (unsigned int) ; 
 int /*<<< orphan*/  FUNC58 (unsigned int) ; 
 int /*<<< orphan*/  FUNC59 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC60 (unsigned int) ; 
 int FUNC61 (unsigned int) ; 
 int /*<<< orphan*/  FUNC62 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC63 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC64 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC65 (unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ TRUE ; 
 int UNDERFLOWEXCEPTION ; 
 int /*<<< orphan*/  ovfl ; 
 int /*<<< orphan*/  unfl ; 

int
FUNC66(
	    sgl_floating_point *leftptr,
	    sgl_floating_point *rightptr,
	    sgl_floating_point *dstptr,
	    unsigned int *status)
    {
    register unsigned int left, right, result, extent;
    register unsigned int signless_upper_left, signless_upper_right, save;
    
    register int result_exponent, right_exponent, diff_exponent;
    register int sign_save, jumpsize;
    register boolean inexact = FALSE, underflowtrap;
        
    /* Create local copies of the numbers */
    left = *leftptr;
    right = *rightptr;

    /* A zero "save" helps discover equal operands (for later),  *
     * and is used in swapping operands (if needed).             */
    FUNC65(left,right,/*to*/save);

    /*
     * check first operand for NaN's or infinity
     */
    if ((result_exponent = FUNC21(left)) == SGL_INFINITY_EXPONENT)
	{
	if (FUNC40(left)) 
	    {
	    if (FUNC29(right)) 
		{
		if (FUNC26(right) && save==0) 
		    {
		    /* 
		     * invalid since operands are same signed infinity's
		     */
		    if (FUNC5()) return(INVALIDEXCEPTION);
                    FUNC11();
                    FUNC48(result);
		    *dstptr = result;
		    return(NOEXCEPTION);
		    }
		/*
	 	 * return infinity
	 	 */
		*dstptr = left;
		return(NOEXCEPTION);
		}
	    }
	else 
	    {
            /*
             * is NaN; signaling or quiet?
             */
            if (FUNC34(left)) 
		{
               	/* trap if INVALIDTRAP enabled */
		if (FUNC5()) return(INVALIDEXCEPTION);
        	/* make NaN quiet */
        	FUNC11();
        	FUNC54(left);
        	}
	    /* 
	     * is second operand a signaling NaN? 
	     */
	    else if (FUNC25(right)) 
		{
        	/* trap if INVALIDTRAP enabled */
               	if (FUNC5()) return(INVALIDEXCEPTION);
		/* make NaN quiet */
		FUNC11();
		FUNC54(right);
		*dstptr = right;
		return(NOEXCEPTION);
		}
	    /*
 	     * return quiet NaN
 	     */
 	    *dstptr = left;
 	    return(NOEXCEPTION);
	    }
	} /* End left NaN or Infinity processing */
    /*
     * check second operand for NaN's or infinity
     */
    if (FUNC27(right)) 
	{
	if (FUNC40(right)) 
	    {
	    /* return infinity */
	    FUNC24(right);
	    *dstptr = right;
	    return(NOEXCEPTION);
	    }
        /*
         * is NaN; signaling or quiet?
         */
        if (FUNC34(right)) 
	    {
            /* trap if INVALIDTRAP enabled */
	    if (FUNC5()) return(INVALIDEXCEPTION);
	    /* make NaN quiet */
	    FUNC11();
	    FUNC54(right);
	    }
	/*
	 * return quiet NaN
 	 */
	*dstptr = right;
	return(NOEXCEPTION);
    	} /* End right NaN or Infinity processing */

    /* Invariant: Must be dealing with finite numbers */

    /* Compare operands by removing the sign */
    FUNC20(left,signless_upper_left);
    FUNC20(right,signless_upper_right);

    /* sign difference selects sub or add operation. */
    if(FUNC28(signless_upper_left,signless_upper_right))
	{
	/* Set the left operand to the larger one by XOR swap *
	 *  First finish the first word using "save"          */
	FUNC64(save,right,/*to*/right);
	FUNC64(save,left,/*to*/left);
	result_exponent = FUNC21(left);
	FUNC24(left);
	}
    /* Invariant:  left is not smaller than right. */ 

    if((right_exponent = FUNC21(right)) == 0)
        {
	/* Denormalized operands.  First look for zeroes */
	if(FUNC40(right)) 
	    {
	    /* right is zero */
	    if(FUNC36(left))
		{
		/* Both operands are zeros */
		FUNC24(right);
		if(FUNC7(ROUNDMINUS))
		    {
		    FUNC50(left,/*with*/right);
		    }
		else
		    {
		    FUNC14(left,/*with*/right);
		    }
		}
	    else 
		{
		/* Left is not a zero and must be the result.  Trapped
		 * underflows are signaled if left is denormalized.  Result
		 * is always exact. */
		if( (result_exponent == 0) && FUNC8() )
		    {
		    /* need to normalize results mantissa */
	    	    sign_save = FUNC61(left);
		    FUNC42(left);
		    FUNC49(left,result_exponent);
		    FUNC55(left,/*using*/sign_save);
                    FUNC59(left,result_exponent,unfl);
		    *dstptr = left;
		    /* inexact = FALSE */
		    return(UNDERFLOWEXCEPTION);
		    }
		}
	    *dstptr = left;
	    return(NOEXCEPTION);
	    }

	/* Neither are zeroes */
	FUNC17(right);	/* Exponent is already cleared */
	if(result_exponent == 0 )
	    {
	    /* Both operands are denormalized.  The result must be exact
	     * and is simply calculated.  A sum could become normalized and a
	     * difference could cancel to a true zero. */
	    if( (/*signed*/int) save >= 0 )
		{
		FUNC62(left,/*minus*/right,/*into*/result);
		if(FUNC40(result))
		    {
		    if(FUNC7(ROUNDMINUS))
			{
			FUNC57(result);
			}
		    else
			{
			FUNC60(result);
			}
		    *dstptr = result;
		    return(NOEXCEPTION);
		    }
		}
	    else
		{
		FUNC13(left,right,/*into*/result);
		if(FUNC30(result))
		    {
		    *dstptr = result;
		    return(NOEXCEPTION);
		    }
		}
	    if(FUNC8())
		{
		/* need to normalize result */
	    	sign_save = FUNC61(result);
		FUNC42(result);
		FUNC49(result,result_exponent);
		FUNC55(result,/*using*/sign_save);
                FUNC59(result,result_exponent,unfl);
		*dstptr = result;
		/* inexact = FALSE */
		return(UNDERFLOWEXCEPTION);
		}
	    *dstptr = result;
	    return(NOEXCEPTION);
	    }
	right_exponent = 1;	/* Set exponent to reflect different bias
				 * with denomalized numbers. */
	}
    else
	{
	FUNC19(right);
	}
    FUNC16(left);
    diff_exponent = result_exponent - right_exponent;

    /* 
     * Special case alignment of operands that would force alignment 
     * beyond the extent of the extension.  A further optimization
     * could special case this but only reduces the path length for this
     * infrequent case.
     */
    if(diff_exponent > SGL_THRESHOLD)
	{
	diff_exponent = SGL_THRESHOLD;
	}
    
    /* Align right operand by shifting to right */
    FUNC51(/*operand*/right,/*shifted by*/diff_exponent,
      /*and lower to*/extent);

    /* Treat sum and difference of the operands separately. */
    if( (/*signed*/int) save >= 0 )
	{
	/*
	 * Difference of the two operands.  Their can be no overflow.  A
	 * borrow can occur out of the hidden bit and force a post
	 * normalization phase.
	 */
	FUNC63(left,/*minus*/right,/*with*/extent,/*into*/result);
	if(FUNC37(result))
	    {
	    /* Handle normalization */
	    /* A straightforward algorithm would now shift the result
	     * and extension left until the hidden bit becomes one.  Not
	     * all of the extension bits need participate in the shift.
	     * Only the two most significant bits (round and guard) are
	     * needed.  If only a single shift is needed then the guard
	     * bit becomes a significant low order bit and the extension
	     * must participate in the rounding.  If more than a single 
	     * shift is needed, then all bits to the right of the guard 
	     * bit are zeros, and the guard bit may or may not be zero. */
	    sign_save = FUNC61(result);
            FUNC43(result,extent,result);

            /* Need to check for a zero result.  The sign and exponent
	     * fields have already been zeroed.  The more efficient test
	     * of the full object can be used.
	     */
    	    if(FUNC35(result))
		/* Must have been "x-x" or "x+(-x)". */
		{
		if(FUNC7(ROUNDMINUS)) FUNC57(result);
		*dstptr = result;
		return(NOEXCEPTION);
		}
	    result_exponent--;
	    /* Look to see if normalization is finished. */
	    if(FUNC30(result))
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
		    FUNC55(result,/*using*/sign_save);
	    	    FUNC3(extent);
		    goto round;
		    }
		}

	    /* Check for denormalized, exponent should be zero.  Left    *
	     * operand was normalized, so extent (guard, round) was zero */
	    if(!(underflowtrap = FUNC8()) &&
	       result_exponent==0) goto underflow;

	    /* Shift extension to complete one bit of normalization and
	     * update exponent. */
	    FUNC3(extent);

	    /* Discover first one bit to determine shift amount.  Use a
	     * modified binary search.  We have already shifted the result
	     * one position right and still not found a one so the remainder
	     * of the extension must be zero and simplifies rounding. */
	    /* Scan bytes */
	    while(FUNC39(result))
		{
		FUNC47(result);
		if((result_exponent -= 8) <= 0  && !underflowtrap)
		    goto underflow;
		}
	    /* Now narrow it down to the nibble */
	    if(FUNC38(result))
		{
		/* The lower nibble contains the normalizing one */
		FUNC46(result);
		if((result_exponent -= 4) <= 0 && !underflowtrap)
		    goto underflow;
		}
	    /* Select case were first bit is set (already normalized)
	     * otherwise select the proper shift. */
	    if((jumpsize = FUNC22(result)) > 7)
		{
		/* Already normalized */
		if(result_exponent <= 0) goto underflow;
		FUNC55(result,/*using*/sign_save);
		FUNC53(result,/*using*/result_exponent);
		*dstptr = result;
		return(NOEXCEPTION);
		}
	    FUNC56(result,/*using*/sign_save);
	    switch(jumpsize) 
		{
		case 1:
		    {
		    FUNC45(result);
		    result_exponent -= 3;
		    break;
		    }
		case 2:
		case 3:
		    {
		    FUNC44(result);
		    result_exponent -= 2;
		    break;
		    }
		case 4:
		case 5:
		case 6:
		case 7:
		    {
		    FUNC42(result);
		    result_exponent -= 1;
		    break;
		    }
		}
	    if(result_exponent > 0) 
		{
		FUNC53(result,/*using*/result_exponent);
		*dstptr = result;	/* Sign bit is already set */
		return(NOEXCEPTION);
		}
	    /* Fixup potential underflows */
	  underflow:
	    if(FUNC8())
		{
		FUNC55(result,sign_save);
                FUNC59(result,result_exponent,unfl);
		*dstptr = result;
		/* inexact = FALSE */
		return(UNDERFLOWEXCEPTION);
		}
	    /*
	     * Since we cannot get an inexact denormalized result,
	     * we can now return.
	     */
	    FUNC51(result,/*by*/(1-result_exponent),extent);
	    FUNC18(result);
	    FUNC55(result,sign_save);
	    *dstptr = result;
	    return(NOEXCEPTION);
	    } /* end if(hidden...)... */
	/* Fall through and round */
	} /* end if(save >= 0)... */
    else 
	{
	/* Add magnitudes */
	FUNC13(left,right,/*to*/result);
	if(FUNC31(result))
	    {
	    /* Prenormalization required. */
	    FUNC52(result,extent,extent);
	    FUNC15(result);
	    result_exponent++;
	    } /* end if hiddenoverflow... */
	} /* end else ...sub magnitudes... */
    
    /* Round the result.  If the extension is all zeros,then the result is
     * exact.  Otherwise round in the correct direction.  No underflow is
     * possible. If a postnormalization is necessary, then the mantissa is
     * all zeros so no shift is needed. */
  round:
    if(FUNC0(extent))
	{
	inexact = TRUE;
	switch(FUNC9())
	    {
	    case ROUNDNEAREST: /* The default. */
	    if(FUNC2(extent))
		{
		/* at least 1/2 ulp */
		if(FUNC1(extent)  ||
		  FUNC32(result))
		    {
		    /* either exactly half way and odd or more than 1/2ulp */
		    FUNC23(result);
		    }
		}
	    break;

	    case ROUNDPLUS:
	    if(FUNC41(result))
		{
		/* Round up positive results */
		FUNC23(result);
		}
	    break;
	    
	    case ROUNDMINUS:
	    if(FUNC33(result))
		{
		/* Round down negative results */
		FUNC23(result);
		}
	    
	    case ROUNDZERO:;
	    /* truncate is simple */
	    } /* end switch... */
	if(FUNC31(result)) result_exponent++;
	}
    if(result_exponent == SGL_INFINITY_EXPONENT)
        {
        /* Overflow */
        if(FUNC6())
	    {
	    FUNC59(result,result_exponent,ovfl);
	    *dstptr = result;
	    if (inexact)
		if (FUNC4())
		    return(OVERFLOWEXCEPTION | INEXACTEXCEPTION);
		else FUNC10();
	    return(OVERFLOWEXCEPTION);
	    }
        else
	    {
	    FUNC12();
	    inexact = TRUE;
	    FUNC58(result);
	    }
	}
    else FUNC53(result,result_exponent);
    *dstptr = result;
    if(inexact) 
	if(FUNC4()) return(INEXACTEXCEPTION);
	else FUNC10();
    return(NOEXCEPTION);
    }