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
typedef  int /*<<< orphan*/  float64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long,unsigned long long,unsigned long long*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long,int*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char,int,unsigned long long) ; 

float64 FUNC7(float64 a, float64 b)
{
	char aSign, bSign, zSign;
	int aExp, bExp, zExp;
	unsigned long long int aSig, bSig, zSig0, zSig1;

	aSig = FUNC1(a);
	aExp = FUNC0(a);
	aSign = FUNC2(a);
	bSig = FUNC1(b);
	bExp = FUNC0(b);
	bSign = FUNC2(b);
	zSign = aSign ^ bSign;

	if (aExp == 0) {
		if (aSig == 0)
			return FUNC5(zSign, 0, 0);
		FUNC4(aSig, &aExp, &aSig);
	}
	if (bExp == 0) {
		if (bSig == 0)
			return FUNC5(zSign, 0, 0);
		FUNC4(bSig, &bExp, &bSig);
	}
	if ((aExp == 0x7ff && aSig == 0) || (bExp == 0x7ff && bSig == 0))
		return FUNC6(zSign, 0x7ff, 0);

	zExp = aExp + bExp - 0x3FF;
	aSig = (aSig | 0x0010000000000000LL) << 10;
	bSig = (bSig | 0x0010000000000000LL) << 11;
	FUNC3(aSig, bSig, &zSig0, &zSig1);
	zSig0 |= (zSig1 != 0);
	if (0 <= (signed long long int)(zSig0 << 1)) {
		zSig0 <<= 1;
		--zExp;
	}
	return FUNC6(zSign, zExp, zSig0);
}