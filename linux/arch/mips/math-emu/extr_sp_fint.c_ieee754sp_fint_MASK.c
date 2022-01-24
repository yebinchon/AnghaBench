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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int SP_FBITS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 union ieee754sp FUNC2 (int,int,unsigned int) ; 
 union ieee754sp FUNC3 (int) ; 
 union ieee754sp FUNC4 (int) ; 
 union ieee754sp FUNC5 (int /*<<< orphan*/ ) ; 

union ieee754sp FUNC6(int x)
{
	unsigned int xm;
	int xe;
	int xs;

	FUNC1();

	if (x == 0)
		return FUNC5(0);
	if (x == 1 || x == -1)
		return FUNC3(x < 0);
	if (x == 10 || x == -10)
		return FUNC4(x < 0);

	xs = (x < 0);
	if (xs) {
		if (x == (1 << 31))
			xm = ((unsigned) 1 << 31);	/* max neg can't be safely negated */
		else
			xm = -x;
	} else {
		xm = x;
	}
	xe = SP_FBITS + 3;

	if (xm >> (SP_FBITS + 1 + 3)) {
		/* shunt out overflow bits
		 */
		while (xm >> (SP_FBITS + 1 + 3)) {
			FUNC0();
		}
	} else {
		/* normalize in grs extended single precision
		 */
		while ((xm >> (SP_FBITS + 3)) == 0) {
			xm <<= 1;
			xe--;
		}
	}
	return FUNC2(xs, xe, xm);
}