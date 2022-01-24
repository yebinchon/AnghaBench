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
typedef  int uint64_t ;
typedef  int int16 ;
typedef  int /*<<< orphan*/  float32 ;
typedef  int flag ;
typedef  int bits64 ;
typedef  int bits32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 

float32 FUNC7(float32 a, float32 b)
{
	flag aSign, bSign, zSign;
	int16 aExp, bExp, zExp;
	bits32 aSig, bSig;
	uint64_t zSig;

	aSig = FUNC2(a);
	aExp = FUNC1(a);
	aSign = FUNC3(a);
	bSig = FUNC2(b);
	bExp = FUNC1(b);
	bSign = FUNC3(b);
	zSign = aSign ^ bSign;
	if (aExp == 0xFF) {
		if (bExp == 0xFF) {
		}
		return FUNC5(zSign, 0xFF, 0);
	}
	if (bExp == 0xFF) {
		return FUNC5(zSign, 0, 0);
	}
	if (bExp == 0) {
		if (bSig == 0) {
			return FUNC5(zSign, 0xFF, 0);
		}
		FUNC4(bSig, &bExp, &bSig);
	}
	if (aExp == 0) {
		if (aSig == 0)
			return FUNC5(zSign, 0, 0);
		FUNC4(aSig, &aExp, &aSig);
	}
	zExp = aExp - bExp + 0x7D;
	aSig = (aSig | 0x00800000) << 7;
	bSig = (bSig | 0x00800000) << 8;
	if (bSig <= (aSig + aSig)) {
		aSig >>= 1;
		++zExp;
	}
	zSig = (((bits64) aSig) << 32);
	FUNC0(zSig, bSig);

	if ((zSig & 0x3F) == 0) {
		zSig |= (((bits64) bSig) * zSig != ((bits64) aSig) << 32);
	}
	return FUNC6(zSign, zExp, (bits32)zSig);

}