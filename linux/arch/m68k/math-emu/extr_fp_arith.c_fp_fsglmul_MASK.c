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
struct TYPE_2__ {int* m32; scalar_t__ m64; } ;
struct fp_ext {int sign; int exp; TYPE_1__ mant; scalar_t__ lowmant; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPSR_EXC_UNFL ; 
 scalar_t__ FUNC0 (struct fp_ext*) ; 
 scalar_t__ FUNC1 (struct fp_ext*) ; 
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC4 (struct fp_ext*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC8 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

struct fp_ext *
FUNC10(struct fp_ext *dest, struct fp_ext *src)
{
	int exp;

	FUNC2(PINSTR, "fsglmul\n");

	FUNC5(dest, src);

	/* calculate the correct sign now, as it's necessary for infinities */
	dest->sign = src->sign ^ dest->sign;

	/* Handle infinities */
	if (FUNC0(dest)) {
		if (FUNC1(src))
			FUNC7(dest);
		return dest;
	}
	if (FUNC0(src)) {
		if (FUNC1(dest))
			FUNC7(dest);
		else
			FUNC3(dest, src);
		return dest;
	}

	/* Of course, as we all know, zero * anything = zero.  You may
	   not have known that it might be a positive or negative
	   zero... */
	if (FUNC1(dest) || FUNC1(src)) {
		dest->exp = 0;
		dest->mant.m64 = 0;
		dest->lowmant = 0;

		return dest;
	}

	exp = dest->exp + src->exp - 0x3ffe;

	/* do a 32-bit multiply */
	FUNC6(dest->mant.m32[0], dest->mant.m32[1],
		 dest->mant.m32[0] & 0xffffff00,
		 src->mant.m32[0] & 0xffffff00);

	if (exp >= 0x7fff) {
		FUNC8(dest);
		return dest;
	}
	dest->exp = exp;
	if (exp < 0) {
		FUNC9(FPSR_EXC_UNFL);
		FUNC4(dest, -exp);
	}

	return dest;
}