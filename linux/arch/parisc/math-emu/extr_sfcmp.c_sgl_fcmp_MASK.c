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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int NOEXCEPTION ; 
 scalar_t__ SGL_INFINITY_EXPONENT ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 scalar_t__ FUNC9 (unsigned int) ; 
 scalar_t__ FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (unsigned int) ; 
 scalar_t__ FUNC12 (unsigned int) ; 
 scalar_t__ FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 

int
FUNC16 (sgl_floating_point * leftptr, sgl_floating_point * rightptr,
	  unsigned int cond, unsigned int *status)
                                           
                       /* The predicate to be tested */
                         
    {
    register unsigned int left, right;
    register int xorresult;
        
    /* Create local copies of the numbers */
    left = *leftptr;
    right = *rightptr;

    /*
     * Test for NaN
     */
    if(    (FUNC8(left) == SGL_INFINITY_EXPONENT)
        || (FUNC8(right) == SGL_INFINITY_EXPONENT) )
	{
	/* Check if a NaN is involved.  Signal an invalid exception when 
	 * comparing a signaling NaN or when comparing quiet NaNs and the
	 * low bit of the condition is set */
        if( (  (FUNC8(left) == SGL_INFINITY_EXPONENT)
	    && FUNC9(left) 
	    && (FUNC1(cond) || FUNC11(left)))
	   ||
	    (  (FUNC8(right) == SGL_INFINITY_EXPONENT)
	    && FUNC9(right) 
	    && (FUNC1(cond) || FUNC11(right)) ) )
	    {
	    if( FUNC3() ) {
	    	FUNC6(FUNC15(cond));
		return(INVALIDEXCEPTION);
	    }
	    else FUNC5();
	    FUNC6(FUNC15(cond));
	    return(NOEXCEPTION);
	    }
	/* All the exceptional conditions are handled, now special case
	   NaN compares */
        else if( ((FUNC8(left) == SGL_INFINITY_EXPONENT)
	    && FUNC9(left))
	   ||
	    ((FUNC8(right) == SGL_INFINITY_EXPONENT)
	    && FUNC9(right)) )
	    {
	    /* NaNs always compare unordered. */
	    FUNC6(FUNC15(cond));
	    return(NOEXCEPTION);
	    }
	/* infinities will drop down to the normal compare mechanisms */
	}
    /* First compare for unequal signs => less or greater or
     * special equal case */
    FUNC14(left,right,xorresult);
    if( xorresult < 0 )
        {
        /* left negative => less, left positive => greater.
         * equal is possible if both operands are zeros. */
        if( FUNC12(left) 
	  && FUNC12(right) )
            {
	    FUNC6(FUNC0(cond));
	    }
	else if( FUNC10(left) )
	    {
	    FUNC6(FUNC4(cond));
	    }
	else
	    {
	    FUNC6(FUNC2(cond));
	    }
        }
    /* Signs are the same.  Treat negative numbers separately
     * from the positives because of the reversed sense.  */
    else if( FUNC7(left) == FUNC7(right) )
        {
        FUNC6(FUNC0(cond));
        }
    else if( FUNC13(left) )
        {
        /* Positive compare */
        if( FUNC7(left) < FUNC7(right) )
	    {
	    FUNC6(FUNC4(cond));
	    }
	else
	    {
	    FUNC6(FUNC2(cond));
	    }
	}
    else
        {
        /* Negative compare.  Signed or unsigned compares
         * both work the same.  That distinction is only
         * important when the sign bits differ. */
        if( FUNC7(left) > FUNC7(right) )
	    {
	    FUNC6(FUNC4(cond));
	    }
        else
	    {
	    FUNC6(FUNC2(cond));
	    }
        }
	return(NOEXCEPTION);
    }