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
typedef  scalar_t__ sbits64 ;
typedef  int int16 ;
typedef  scalar_t__ float64 ;
typedef  int flag ;
typedef  int bits64 ;
typedef  int bits16 ;

/* Variables and functions */
 int FPSCR_CAUSE_INEXACT ; 
 int FPSCR_CAUSE_OVERFLOW ; 
 int FPSCR_CAUSE_UNDERFLOW ; 
 scalar_t__ FPSCR_RM_NEAREST ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int*) ; 

__attribute__((used)) static float64 FUNC5(flag zSign, int16 zExp, bits64 zSig)
{
	flag roundNearestEven;
	int16 roundIncrement, roundBits;
	flag isTiny;

	/* SH4 has only 2 rounding modes - round to nearest and round to zero */
	roundNearestEven = (FUNC2() == FPSCR_RM_NEAREST);
	roundIncrement = 0x200;
	if (!roundNearestEven) {
		roundIncrement = 0;
	}
	roundBits = zSig & 0x3FF;
	if (0x7FD <= (bits16) zExp) {
		if ((0x7FD < zExp)
		    || ((zExp == 0x7FD)
			&& ((sbits64) (zSig + roundIncrement) < 0))
		    ) {
			FUNC1(FPSCR_CAUSE_OVERFLOW | FPSCR_CAUSE_INEXACT);
			return FUNC3(zSign, 0x7FF,
					   0) - (roundIncrement == 0);
		}
		if (zExp < 0) {
			isTiny = (zExp < -1)
			    || (zSig + roundIncrement <
				FUNC0(0x8000000000000000));
			FUNC4(zSig, -zExp, &zSig);
			zExp = 0;
			roundBits = zSig & 0x3FF;
			if (isTiny && roundBits)
				FUNC1(FPSCR_CAUSE_UNDERFLOW);
		}
	}
	if (roundBits)
		FUNC1(FPSCR_CAUSE_INEXACT);
	zSig = (zSig + roundIncrement) >> 10;
	zSig &= ~(((roundBits ^ 0x200) == 0) & roundNearestEven);
	if (zSig == 0)
		zExp = 0;
	return FUNC3(zSign, zExp, zSig);

}