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
union fp_mant128 {int /*<<< orphan*/ * m32; } ;
struct TYPE_2__ {scalar_t__* m32; scalar_t__ m64; } ;
struct fp_ext {int sign; int exp; TYPE_1__ mant; scalar_t__ lowmant; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPSR_EXC_DZ ; 
 int /*<<< orphan*/  FPSR_EXC_UNFL ; 
 scalar_t__ FUNC0 (struct fp_ext*) ; 
 scalar_t__ FUNC1 (struct fp_ext*) ; 
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fp_ext*,int) ; 
 int /*<<< orphan*/  FUNC4 (union fp_mant128*,struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC5 (struct fp_ext*,struct fp_ext*) ; 
 scalar_t__ FUNC6 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC7 (struct fp_ext*,union fp_mant128*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC9 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

struct fp_ext *
FUNC11(struct fp_ext *dest, struct fp_ext *src)
{
	union fp_mant128 temp;
	int exp;

	FUNC2(PINSTR, "fdiv\n");

	FUNC5(dest, src);

	/* calculate the correct sign now, as it's necessary for infinities */
	dest->sign = src->sign ^ dest->sign;

	/* Handle infinities */
	if (FUNC0(dest)) {
		/* infinity / infinity = NaN (quiet, as always) */
		if (FUNC0(src))
			FUNC8(dest);
		/* infinity / anything else = infinity (with approprate sign) */
		return dest;
	}
	if (FUNC0(src)) {
		/* anything / infinity = zero (with appropriate sign) */
		dest->exp = 0;
		dest->mant.m64 = 0;
		dest->lowmant = 0;

		return dest;
	}

	/* zeroes */
	if (FUNC1(dest)) {
		/* zero / zero = NaN */
		if (FUNC1(src))
			FUNC8(dest);
		/* zero / anything else = zero */
		return dest;
	}
	if (FUNC1(src)) {
		/* anything / zero = infinity (with appropriate sign) */
		FUNC10(FPSR_EXC_DZ);
		dest->exp = 0x7fff;
		dest->mant.m64 = 0;

		return dest;
	}

	exp = dest->exp - src->exp + 0x3fff;

	/* shift up the mantissa for denormalized numbers,
	   so that the highest bit is set, this makes lots
	   of things below easier */
	if ((long)dest->mant.m32[0] >= 0)
		exp -= FUNC6(dest);
	if ((long)src->mant.m32[0] >= 0)
		exp -= FUNC6(src);

	/* now, do the 64-bit divide */
	FUNC4(&temp, dest, src);

	/* normalize it back to 64 bits and stuff it back into the
	   destination struct */
	if (!temp.m32[0]) {
		exp--;
		FUNC7(dest, &temp, 32);
	} else
		FUNC7(dest, &temp, 31);

	if (exp >= 0x7fff) {
		FUNC9(dest);
		return dest;
	}
	dest->exp = exp;
	if (exp < 0) {
		FUNC10(FPSR_EXC_UNFL);
		FUNC3(dest, -exp);
	}

	return dest;
}