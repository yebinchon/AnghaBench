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
typedef  union ieee754sp {int dummy; } ieee754sp ;
typedef  union ieee754dp {int dummy; } ieee754dp ;
typedef  int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  COMPXSP ; 
 scalar_t__ DP_EBIAS ; 
 int DP_FBITS ; 
 int /*<<< orphan*/  EXPLODEXSP ; 
 int /*<<< orphan*/  FLUSHXSP ; 
#define  IEEE754_CLASS_DNORM 133 
#define  IEEE754_CLASS_INF 132 
#define  IEEE754_CLASS_NORM 131 
#define  IEEE754_CLASS_QNAN 130 
#define  IEEE754_CLASS_SNAN 129 
#define  IEEE754_CLASS_ZERO 128 
 int SP_FBITS ; 
 int SP_HIDDEN_BIT ; 
 union ieee754dp FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 union ieee754dp FUNC2 (int /*<<< orphan*/ ) ; 
 union ieee754dp FUNC3 (int /*<<< orphan*/ ,int) ; 
 union ieee754dp FUNC4 (union ieee754dp) ; 
 union ieee754dp FUNC5 (int /*<<< orphan*/ ) ; 
 int xc ; 
 scalar_t__ xe ; 
 int xm ; 
 int /*<<< orphan*/  xs ; 

union ieee754dp FUNC6(union ieee754sp x)
{
	COMPXSP;

	EXPLODEXSP;

	FUNC1();

	FLUSHXSP;

	switch (xc) {
	case IEEE754_CLASS_SNAN:
		return FUNC4(FUNC3(xs, xm));

	case IEEE754_CLASS_QNAN:
		return FUNC3(xs, xm);

	case IEEE754_CLASS_INF:
		return FUNC2(xs);

	case IEEE754_CLASS_ZERO:
		return FUNC5(xs);

	case IEEE754_CLASS_DNORM:
		/* normalize */
		while ((xm >> SP_FBITS) == 0) {
			xm <<= 1;
			xe--;
		}
		break;

	case IEEE754_CLASS_NORM:
		break;
	}

	/*
	 * Can't possibly overflow,underflow, or need rounding
	 */

	/* drop the hidden bit */
	xm &= ~SP_HIDDEN_BIT;

	return FUNC0(xs, xe + DP_EBIAS,
		       (u64) xm << (DP_FBITS - SP_FBITS));
}