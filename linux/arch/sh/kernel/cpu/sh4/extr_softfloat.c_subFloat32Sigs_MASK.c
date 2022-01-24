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
typedef  int int16 ;
typedef  int /*<<< orphan*/  float32 ;
typedef  int flag ;
typedef  int bits32 ;

/* Variables and functions */
 scalar_t__ FPSCR_RM_ZERO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int*) ; 

__attribute__((used)) static float32 FUNC6(float32 a, float32 b, flag zSign)
{
	int16 aExp, bExp, zExp;
	bits32 aSig, bSig, zSig;
	int16 expDiff;

	aSig = FUNC1(a);
	aExp = FUNC0(a);
	bSig = FUNC1(b);
	bExp = FUNC0(b);
	expDiff = aExp - bExp;
	aSig <<= 7;
	bSig <<= 7;
	if (0 < expDiff)
		goto aExpBigger;
	if (expDiff < 0)
		goto bExpBigger;
	if (aExp == 0) {
		aExp = 1;
		bExp = 1;
	}
	if (bSig < aSig)
		goto aBigger;
	if (aSig < bSig)
		goto bBigger;
	return FUNC4(FUNC2() == FPSCR_RM_ZERO, 0, 0);
      bExpBigger:
	if (bExp == 0xFF) {
		return FUNC4(zSign ^ 1, 0xFF, 0);
	}
	if (aExp == 0) {
		++expDiff;
	} else {
		aSig |= 0x40000000;
	}
	FUNC5(aSig, -expDiff, &aSig);
	bSig |= 0x40000000;
      bBigger:
	zSig = bSig - aSig;
	zExp = bExp;
	zSign ^= 1;
	goto normalizeRoundAndPack;
      aExpBigger:
	if (aExp == 0xFF) {
		return a;
	}
	if (bExp == 0) {
		--expDiff;
	} else {
		bSig |= 0x40000000;
	}
	FUNC5(bSig, expDiff, &bSig);
	aSig |= 0x40000000;
      aBigger:
	zSig = aSig - bSig;
	zExp = aExp;
      normalizeRoundAndPack:
	--zExp;
	return FUNC3(zSign, zExp, zSig);

}