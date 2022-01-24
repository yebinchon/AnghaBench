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
typedef  int /*<<< orphan*/  float32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long long,int,unsigned long long*) ; 

float32 FUNC7(float32 a, float32 b)
{
	char aSign, bSign, zSign;
	int aExp, bExp, zExp;
	unsigned int aSig, bSig;
	unsigned long long zSig64;
	unsigned int zSig;

	aSig = FUNC1(a);
	aExp = FUNC0(a);
	aSign = FUNC2(a);
	bSig = FUNC1(b);
	bExp = FUNC0(b);
	bSign = FUNC2(b);
	zSign = aSign ^ bSign;
	if (aExp == 0) {
		if (aSig == 0)
			return FUNC4(zSign, 0, 0);
		FUNC3(aSig, &aExp, &aSig);
	}
	if (bExp == 0) {
		if (bSig == 0)
			return FUNC4(zSign, 0, 0);
		FUNC3(bSig, &bExp, &bSig);
	}
	if ((bExp == 0xff && bSig == 0) || (aExp == 0xff && aSig == 0))
		return FUNC5(zSign, 0xff, 0);

	zExp = aExp + bExp - 0x7F;
	aSig = (aSig | 0x00800000) << 7;
	bSig = (bSig | 0x00800000) << 8;
	FUNC6(((unsigned long long)aSig) * bSig, 32, &zSig64);
	zSig = zSig64;
	if (0 <= (signed int)(zSig << 1)) {
		zSig <<= 1;
		--zExp;
	}
	return FUNC5(zSign, zExp, zSig);

}