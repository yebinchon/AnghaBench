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
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  COMPXDP ; 
 int /*<<< orphan*/  COMPYDP ; 
 int DP_SIGN_BIT ; 
 int /*<<< orphan*/  EXPLODEXDP ; 
 int /*<<< orphan*/  EXPLODEYDP ; 
 int /*<<< orphan*/  FLUSHXDP ; 
 int /*<<< orphan*/  FLUSHYDP ; 
 int IEEE754_CEQ ; 
 int IEEE754_CGT ; 
 scalar_t__ IEEE754_CLASS_SNAN ; 
 int IEEE754_CLT ; 
 int IEEE754_CUN ; 
 int /*<<< orphan*/  IEEE754_INVALID_OPERATION ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ xc ; 
 scalar_t__ yc ; 

int FUNC3(union ieee754dp x, union ieee754dp y, int cmp, int sig)
{
	s64 vx;
	s64 vy;

	COMPXDP;
	COMPYDP;

	EXPLODEXDP;
	EXPLODEYDP;
	FLUSHXDP;
	FLUSHYDP;
	FUNC1();	/* Even clear inexact flag here */

	if (FUNC0(xc) || FUNC0(yc)) {
		if (sig ||
		    xc == IEEE754_CLASS_SNAN || yc == IEEE754_CLASS_SNAN)
			FUNC2(IEEE754_INVALID_OPERATION);
		return (cmp & IEEE754_CUN) != 0;
	} else {
		vx = x.bits;
		vy = y.bits;

		if (vx < 0)
			vx = -vx ^ DP_SIGN_BIT;
		if (vy < 0)
			vy = -vy ^ DP_SIGN_BIT;

		if (vx < vy)
			return (cmp & IEEE754_CLT) != 0;
		else if (vx == vy)
			return (cmp & IEEE754_CEQ) != 0;
		else
			return (cmp & IEEE754_CGT) != 0;
	}
}