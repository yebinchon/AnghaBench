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
struct fp_ext {int exp; } ;
struct TYPE_2__ {int rnd; } ;

/* Variables and functions */
 int FPCR_ROUND_RZ ; 
 TYPE_1__* FPDATA ; 
 int /*<<< orphan*/  FPSR_EXC_UNFL ; 
 scalar_t__ FUNC0 (struct fp_ext*) ; 
 scalar_t__ FUNC1 (struct fp_ext*) ; 
 int /*<<< orphan*/  PINSTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC4 (struct fp_ext*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC6 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC7 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

struct fp_ext *
FUNC9(struct fp_ext *dest, struct fp_ext *src)
{
	int scale, oldround;

	FUNC2(PINSTR, "fscale\n");

	FUNC5(dest, src);

	/* Infinities */
	if (FUNC0(src)) {
		FUNC6(dest);
		return dest;
	}
	if (FUNC0(dest))
		return dest;

	/* zeroes */
	if (FUNC1(src) || FUNC1(dest))
		return dest;

	/* Source exponent out of range */
	if (src->exp >= 0x400c) {
		FUNC7(dest);
		return dest;
	}

	/* src must be rounded with round to zero. */
	oldround = FPDATA->rnd;
	FPDATA->rnd = FPCR_ROUND_RZ;
	scale = FUNC3(src);
	FPDATA->rnd = oldround;

	/* new exponent */
	scale += dest->exp;

	if (scale >= 0x7fff) {
		FUNC7(dest);
	} else if (scale <= 0) {
		FUNC8(FPSR_EXC_UNFL);
		FUNC4(dest, -scale);
	} else
		dest->exp = scale;

	return dest;
}