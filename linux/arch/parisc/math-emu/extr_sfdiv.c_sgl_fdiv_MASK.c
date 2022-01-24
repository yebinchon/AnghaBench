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
typedef  int boolean ;

/* Variables and functions */
 int DIVISIONBYZEROEXCEPTION ; 
 int FALSE ; 
 int INEXACTEXCEPTION ; 
 int INVALIDEXCEPTION ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int NOEXCEPTION ; 
 int OVERFLOWEXCEPTION ; 
#define  ROUNDMINUS 130 
#define  ROUNDNEAREST 129 
#define  ROUNDPLUS 128 
 int FUNC5 () ; 
 int SGL_BIAS ; 
 int SGL_INFINITY_EXPONENT ; 
 int SGL_P ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,unsigned int,unsigned int) ; 
 int FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int,int,int,int,int) ; 
 int FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (unsigned int) ; 
 scalar_t__ FUNC20 (unsigned int) ; 
 scalar_t__ FUNC21 (unsigned int) ; 
 scalar_t__ FUNC22 (unsigned int) ; 
 scalar_t__ FUNC23 (unsigned int) ; 
 scalar_t__ FUNC24 (unsigned int) ; 
 scalar_t__ FUNC25 (unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (unsigned int) ; 
 int /*<<< orphan*/  FUNC27 (unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (unsigned int) ; 
 scalar_t__ FUNC29 (unsigned int) ; 
 scalar_t__ FUNC30 (unsigned int) ; 
 scalar_t__ FUNC31 (unsigned int) ; 
 scalar_t__ FUNC32 (unsigned int) ; 
 scalar_t__ FUNC33 (unsigned int) ; 
 scalar_t__ FUNC34 (unsigned int) ; 
 scalar_t__ FUNC35 (unsigned int) ; 
 int /*<<< orphan*/  FUNC36 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC37 (unsigned int) ; 
 int /*<<< orphan*/  FUNC38 (unsigned int) ; 
 int /*<<< orphan*/  FUNC39 (unsigned int) ; 
 int /*<<< orphan*/  FUNC40 (unsigned int) ; 
 int /*<<< orphan*/  FUNC41 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC42 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC43 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC44 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC45 (unsigned int) ; 
 int /*<<< orphan*/  FUNC46 (unsigned int) ; 
 int /*<<< orphan*/  FUNC47 (unsigned int) ; 
 int /*<<< orphan*/  FUNC48 (unsigned int) ; 
 int /*<<< orphan*/  FUNC49 (unsigned int) ; 
 int /*<<< orphan*/  FUNC50 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC51 (unsigned int) ; 
 int /*<<< orphan*/  FUNC52 (unsigned int) ; 
 int FUNC53 (unsigned int) ; 
 int /*<<< orphan*/  FUNC54 (unsigned int,unsigned int,unsigned int) ; 
 int TRUE ; 
 int UNDERFLOWEXCEPTION ; 
 int /*<<< orphan*/  ovfl ; 
 int /*<<< orphan*/  unfl ; 

int
FUNC55 (sgl_floating_point * srcptr1, sgl_floating_point * srcptr2,
	  sgl_floating_point * dstptr, unsigned int *status)
{
	register unsigned int opnd1, opnd2, opnd3, result;
	register int dest_exponent, count;
	register boolean inexact = FALSE, guardbit = FALSE, stickybit = FALSE;
	boolean is_tiny;

	opnd1 = *srcptr1;
	opnd2 = *srcptr2;
	/* 
	 * set sign bit of result 
	 */
	if (FUNC53(opnd1) ^ FUNC53(opnd2)) FUNC47(result);  
	else FUNC51(result);
	/*
	 * check first operand for NaN's or infinity
	 */
	if (FUNC22(opnd1)) {
		if (FUNC34(opnd1)) {
			if (FUNC23(opnd2)) {
				if (FUNC21(opnd2)) {
					/* 
					 * invalid since both operands 
					 * are infinity 
					 */
					if (FUNC2()) 
                                		return(INVALIDEXCEPTION);
                                	FUNC8();
                                	FUNC40(result);
					*dstptr = result;
					return(NOEXCEPTION);
				}
				/*
			 	 * return infinity
			 	 */
				FUNC46(result);
				*dstptr = result;
				return(NOEXCEPTION);
			}
		}
		else {
                	/*
                 	 * is NaN; signaling or quiet?
                 	 */
                	if (FUNC29(opnd1)) {
                        	/* trap if INVALIDTRAP enabled */
                        	if (FUNC2()) 
                            		return(INVALIDEXCEPTION);
                        	/* make NaN quiet */
                        	FUNC8();
                        	FUNC45(opnd1);
                	}
			/* 
			 * is second operand a signaling NaN? 
			 */
			else if (FUNC20(opnd2)) {
                        	/* trap if INVALIDTRAP enabled */
                        	if (FUNC2())
                            		return(INVALIDEXCEPTION);
                        	/* make NaN quiet */
                        	FUNC8();
                        	FUNC45(opnd2);
                		*dstptr = opnd2;
                		return(NOEXCEPTION);
			}
                	/*
                 	 * return quiet NaN
                 	 */
                	*dstptr = opnd1;
                	return(NOEXCEPTION);
		}
	}
	/*
	 * check second operand for NaN's or infinity
	 */
	if (FUNC22(opnd2)) {
		if (FUNC34(opnd2)) {
			/*
			 * return zero
			 */
			FUNC52(result);
			*dstptr = result;
			return(NOEXCEPTION);
		}
                /*
                 * is NaN; signaling or quiet?
                 */
                if (FUNC29(opnd2)) {
                        /* trap if INVALIDTRAP enabled */
                        if (FUNC2()) return(INVALIDEXCEPTION);
                        /* make NaN quiet */
                        FUNC8();
                        FUNC45(opnd2);
                }
                /*
                 * return quiet NaN
                 */
                *dstptr = opnd2;
                return(NOEXCEPTION);
	}
	/*
	 * check for division by zero
	 */
	if (FUNC30(opnd2)) {
		if (FUNC30(opnd1)) {
			/* invalid since both operands are zero */
			if (FUNC2()) return(INVALIDEXCEPTION);
                        FUNC8();
                        FUNC40(result);
			*dstptr = result;
			return(NOEXCEPTION);
		}
		if (FUNC0())
                        return(DIVISIONBYZEROEXCEPTION);
                FUNC6();
                FUNC46(result);
		*dstptr = result;
		return(NOEXCEPTION);
	}
	/*
	 * Generate exponent 
	 */
	dest_exponent = FUNC17(opnd1) - FUNC17(opnd2) + SGL_BIAS;

	/*
	 * Generate mantissa
	 */
	if (FUNC24(opnd1)) {
		/* set hidden bit */
		FUNC14(opnd1);
	}
	else {
		/* check for zero */
		if (FUNC34(opnd1)) {
			FUNC52(result);
			*dstptr = result;
			return(NOEXCEPTION);
		}
                /* is denormalized; want to normalize */
                FUNC13(opnd1);
                FUNC37(opnd1);
		FUNC41(opnd1,dest_exponent);
	}
	/* opnd2 needs to have hidden bit set with msb in hidden bit */
	if (FUNC24(opnd2)) {
		FUNC14(opnd2);
	}
	else {
                /* is denormalized; want to normalize */
                FUNC13(opnd2);
                FUNC37(opnd2);
		while(FUNC33(opnd2)) {
			FUNC39(opnd2);
			dest_exponent += 8;
		}
		if(FUNC32(opnd2)) {
			FUNC38(opnd2);
			dest_exponent += 4;
		}
		while(FUNC31(opnd2)) {
			FUNC37(opnd2);
			dest_exponent += 1;
		}
	}

	/* Divide the source mantissas */

	/*
	 * A non_restoring divide algorithm is used.
	 */
	FUNC54(opnd1,opnd2,opnd1);
	FUNC51(opnd3);
	for (count=1;count<=SGL_P && FUNC12(opnd1);count++) {
		FUNC37(opnd1);
		FUNC37(opnd3);
		if (FUNC35(opnd1)) {
			FUNC48(opnd3);
			FUNC54(opnd1,opnd2,opnd1);
		}
		else FUNC11(opnd1,opnd2,opnd1);
	}
	if (count <= SGL_P) {
		FUNC37(opnd3);
		FUNC48(opnd3);
		FUNC36(opnd3,SGL_P-count);
		if (FUNC31(opnd3)) {
			FUNC37(opnd3);
			dest_exponent--;
		}
	}
	else {
		if (FUNC31(opnd3)) {
			/* need to get one more bit of result */
			FUNC37(opnd1);
			FUNC37(opnd3);
			if (FUNC35(opnd1)) {
				FUNC48(opnd3);
				FUNC54(opnd1,opnd2,opnd1);
			}
			else FUNC11(opnd1,opnd2,opnd1);
			dest_exponent--;
		}
		if (FUNC35(opnd1)) guardbit = TRUE;
		stickybit = FUNC12(opnd1);
	}
	inexact = guardbit | stickybit;

	/* 
	 * round result 
	 */
	if (inexact && (dest_exponent > 0 || FUNC4())) {
		FUNC13(opnd3);
		switch (FUNC5()) {
			case ROUNDPLUS: 
				if (FUNC35(result)) 
					FUNC19(opnd3);
				break;
			case ROUNDMINUS: 
				if (FUNC28(result)) 
					FUNC19(opnd3);
				break;
			case ROUNDNEAREST:
				if (guardbit) {
			   	if (stickybit || FUNC27(opnd3))
			      	    FUNC19(opnd3);
				}
		}
		if (FUNC25(opnd3)) dest_exponent++;
	}
	FUNC44(result,opnd3);

        /* 
         * Test for overflow
         */
	if (dest_exponent >= SGL_INFINITY_EXPONENT) {
                /* trap if OVERFLOWTRAP enabled */
                if (FUNC3()) {
                        /*
                         * Adjust bias of result
                         */
                        FUNC50(result,dest_exponent,ovfl);
                        *dstptr = result;
                        if (inexact) 
                            if (FUNC1())
                                return(OVERFLOWEXCEPTION | INEXACTEXCEPTION);
                            else FUNC7();
                        return(OVERFLOWEXCEPTION);
                }
		FUNC9();
                /* set result to infinity or largest number */
		FUNC49(result);
		inexact = TRUE;
	}
        /* 
         * Test for underflow
         */
	else if (dest_exponent <= 0) {
                /* trap if UNDERFLOWTRAP enabled */
                if (FUNC4()) {
                        /*
                         * Adjust bias of result
                         */
                        FUNC50(result,dest_exponent,unfl);
                        *dstptr = result;
                        if (inexact) 
                            if (FUNC1())
                                return(UNDERFLOWEXCEPTION | INEXACTEXCEPTION);
                            else FUNC7();
                        return(UNDERFLOWEXCEPTION);
                }

		/* Determine if should set underflow flag */
		is_tiny = TRUE;
		if (dest_exponent == 0 && inexact) {
			switch (FUNC5()) {
			case ROUNDPLUS: 
				if (FUNC35(result)) {
					FUNC18(opnd3);
					if (FUNC26(opnd3))
                			    is_tiny = FALSE;
					FUNC15(opnd3);
				}
				break;
			case ROUNDMINUS: 
				if (FUNC28(result)) {
					FUNC18(opnd3);
					if (FUNC26(opnd3))
                			    is_tiny = FALSE;
					FUNC15(opnd3);
				}
				break;
			case ROUNDNEAREST:
				if (guardbit && (stickybit || 
				    FUNC27(opnd3))) {
				      	FUNC18(opnd3);
					if (FUNC26(opnd3))
                			    is_tiny = FALSE;
					FUNC15(opnd3);
				}
				break;
			}
		}

                /*
                 * denormalize result or set to signed zero
                 */
		stickybit = inexact;
		FUNC16(opnd3,dest_exponent,guardbit,stickybit,inexact);

		/* return rounded number */ 
		if (inexact) {
			switch (FUNC5()) {
			case ROUNDPLUS:
				if (FUNC35(result)) {
					FUNC18(opnd3);
				}
				break;
			case ROUNDMINUS: 
				if (FUNC28(result))  {
					FUNC18(opnd3);
				}
				break;
			case ROUNDNEAREST:
				if (guardbit && (stickybit || 
				    FUNC27(opnd3))) {
			      		FUNC18(opnd3);
				}
				break;
			}
                	if (is_tiny) FUNC10();
                }
		FUNC43(result,opnd3);
	}
	else FUNC42(result,dest_exponent);
	*dstptr = result;
	/* check for inexact */
	if (inexact) {
		if (FUNC1()) return(INEXACTEXCEPTION);
		else  FUNC7();
	}
	return(NOEXCEPTION);
}