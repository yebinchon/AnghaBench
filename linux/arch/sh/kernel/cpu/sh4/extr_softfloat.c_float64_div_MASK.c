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
typedef  int /*<<< orphan*/  float64 ;
typedef  int flag ;
typedef  int bits64 ;

/* Variables and functions */
 int /*<<< orphan*/  FPSCR_CAUSE_INVALID ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int,int*,int*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int,int,int*,int*) ; 

float64 FUNC12(float64 a, float64 b)
{
	flag aSign, bSign, zSign;
	int16 aExp, bExp, zExp;
	bits64 aSig, bSig, zSig;
	bits64 rem0, rem1;
	bits64 term0, term1;

	aSig = FUNC4(a);
	aExp = FUNC3(a);
	aSign = FUNC5(a);
	bSig = FUNC4(b);
	bExp = FUNC3(b);
	bSign = FUNC5(b);
	zSign = aSign ^ bSign;
	if (aExp == 0x7FF) {
		if (bExp == 0x7FF) {
		}
		return FUNC9(zSign, 0x7FF, 0);
	}
	if (bExp == 0x7FF) {
		return FUNC9(zSign, 0, 0);
	}
	if (bExp == 0) {
		if (bSig == 0) {
			if ((aExp | aSig) == 0) {
				FUNC6(FPSCR_CAUSE_INVALID);
			}
			return FUNC9(zSign, 0x7FF, 0);
		}
		FUNC8(bSig, &bExp, &bSig);
	}
	if (aExp == 0) {
		if (aSig == 0)
			return FUNC9(zSign, 0, 0);
		FUNC8(aSig, &aExp, &aSig);
	}
	zExp = aExp - bExp + 0x3FD;
	aSig = (aSig | FUNC0(0x0010000000000000)) << 10;
	bSig = (bSig | FUNC0(0x0010000000000000)) << 11;
	if (bSig <= (aSig + aSig)) {
		aSig >>= 1;
		++zExp;
	}
	zSig = FUNC2(aSig, 0, bSig);
	if ((zSig & 0x1FF) <= 2) {
		FUNC7(bSig, zSig, &term0, &term1);
		FUNC11(aSig, 0, term0, term1, &rem0, &rem1);
		while ((sbits64) rem0 < 0) {
			--zSig;
			FUNC1(rem0, rem1, 0, bSig, &rem0, &rem1);
		}
		zSig |= (rem1 != 0);
	}
	return FUNC10(zSign, zExp, zSig);

}