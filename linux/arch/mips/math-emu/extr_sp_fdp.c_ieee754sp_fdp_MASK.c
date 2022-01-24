#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union ieee754sp {int dummy; } ieee754sp ;
typedef  union ieee754dp {int dummy; } ieee754dp ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rm; int /*<<< orphan*/  nan2008; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPXDP ; 
 int /*<<< orphan*/  COMPYSP ; 
 int DP_FBITS ; 
 int /*<<< orphan*/  EXPLODEXDP ; 
 int /*<<< orphan*/  EXPLODEYSP ; 
 int /*<<< orphan*/  FLUSHXDP ; 
 int /*<<< orphan*/  FPU_CSR_RD ; 
 int /*<<< orphan*/  FPU_CSR_RU ; 
#define  IEEE754_CLASS_DNORM 133 
#define  IEEE754_CLASS_INF 132 
#define  IEEE754_CLASS_NORM 131 
#define  IEEE754_CLASS_QNAN 130 
#define  IEEE754_CLASS_SNAN 129 
#define  IEEE754_CLASS_ZERO 128 
 int /*<<< orphan*/  IEEE754_INEXACT ; 
 int /*<<< orphan*/  IEEE754_UNDERFLOW ; 
 int SP_FBITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ ieee754_csr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 union ieee754dp FUNC3 (union ieee754dp) ; 
 union ieee754sp FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 union ieee754sp FUNC5 () ; 
 union ieee754sp FUNC6 (int /*<<< orphan*/ ) ; 
 union ieee754sp FUNC7 (int /*<<< orphan*/ ) ; 
 union ieee754sp FUNC8 (int /*<<< orphan*/ ,int) ; 
 union ieee754sp FUNC9 (int /*<<< orphan*/ ) ; 
 int xc ; 
 int /*<<< orphan*/  xe ; 
 int xm ; 
 int /*<<< orphan*/  xs ; 
 int /*<<< orphan*/  yc ; 

union ieee754sp FUNC10(union ieee754dp x)
{
	union ieee754sp y;
	u32 rm;

	COMPXDP;
	COMPYSP;

	EXPLODEXDP;

	FUNC1();

	FLUSHXDP;

	switch (xc) {
	case IEEE754_CLASS_SNAN:
		x = FUNC3(x);
		EXPLODEXDP;
		/* fall through */

	case IEEE754_CLASS_QNAN:
		y = FUNC8(xs, xm);
		if (!ieee754_csr.nan2008) {
			EXPLODEYSP;
			if (!FUNC0(yc))
				y = FUNC5();
		}
		return y;

	case IEEE754_CLASS_INF:
		return FUNC6(xs);

	case IEEE754_CLASS_ZERO:
		return FUNC9(xs);

	case IEEE754_CLASS_DNORM:
		/* can't possibly be sp representable */
		FUNC2(IEEE754_UNDERFLOW);
		FUNC2(IEEE754_INEXACT);
		if ((ieee754_csr.rm == FPU_CSR_RU && !xs) ||
				(ieee754_csr.rm == FPU_CSR_RD && xs))
			return FUNC7(xs);
		return FUNC9(xs);

	case IEEE754_CLASS_NORM:
		break;
	}

	/*
	 * Convert from DP_FBITS to SP_FBITS+3 with sticky right shift.
	 */
	rm = (xm >> (DP_FBITS - (SP_FBITS + 3))) |
	     ((xm << (64 - (DP_FBITS - (SP_FBITS + 3)))) != 0);

	return FUNC4(xs, xe, rm);
}