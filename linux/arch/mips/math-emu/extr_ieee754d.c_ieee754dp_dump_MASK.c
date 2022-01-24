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
union ieee754dp {int bits; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (union ieee754dp) ; 
 int FUNC1 (union ieee754dp) ; 
 int /*<<< orphan*/  FUNC2 (union ieee754dp) ; 
 scalar_t__ DP_EBIAS ; 
 int /*<<< orphan*/  DP_FBITS ; 
 int FUNC3 (int) ; 
#define  IEEE754_CLASS_DNORM 133 
#define  IEEE754_CLASS_INF 132 
#define  IEEE754_CLASS_NORM 131 
#define  IEEE754_CLASS_QNAN 130 
#define  IEEE754_CLASS_SNAN 129 
#define  IEEE754_CLASS_ZERO 128 
 int FUNC4 (union ieee754dp) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

union ieee754dp FUNC6(char *m, union ieee754dp x)
{
	int i;

	FUNC5("%s", m);
	FUNC5("<%08x,%08x>\n", (unsigned) (x.bits >> 32),
	       (unsigned) x.bits);
	FUNC5("\t=");
	switch (FUNC4(x)) {
	case IEEE754_CLASS_QNAN:
	case IEEE754_CLASS_SNAN:
		FUNC5("Nan %c", FUNC2(x) ? '-' : '+');
		for (i = DP_FBITS - 1; i >= 0; i--)
			FUNC5("%c", FUNC1(x) & FUNC3(i) ? '1' : '0');
		break;
	case IEEE754_CLASS_INF:
		FUNC5("%cInfinity", FUNC2(x) ? '-' : '+');
		break;
	case IEEE754_CLASS_ZERO:
		FUNC5("%cZero", FUNC2(x) ? '-' : '+');
		break;
	case IEEE754_CLASS_DNORM:
		FUNC5("%c0.", FUNC2(x) ? '-' : '+');
		for (i = DP_FBITS - 1; i >= 0; i--)
			FUNC5("%c", FUNC1(x) & FUNC3(i) ? '1' : '0');
		FUNC5("e%d", FUNC0(x) - DP_EBIAS);
		break;
	case IEEE754_CLASS_NORM:
		FUNC5("%c1.", FUNC2(x) ? '-' : '+');
		for (i = DP_FBITS - 1; i >= 0; i--)
			FUNC5("%c", FUNC1(x) & FUNC3(i) ? '1' : '0');
		FUNC5("e%d", FUNC0(x) - DP_EBIAS);
		break;
	default:
		FUNC5("Illegal/Unknown IEEE754 value class");
	}
	FUNC5("\n");
	return x;
}