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
struct TYPE_2__ {int m64; } ;
struct fp_ext {int sign; TYPE_1__ mant; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fp_ext*) ; 
 scalar_t__ FUNC1 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC2 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC3 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC4 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC5 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC6 (struct fp_ext*,struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC7 (struct fp_ext*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fp_ext*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static struct fp_ext *
FUNC10(struct fp_ext *dest, struct fp_ext *src, int mode)
{
	struct fp_ext tmp;

	FUNC3(dest, src);

	/* Infinities and zeros */
	if (FUNC0(dest) || FUNC1(src)) {
		FUNC8(dest);
		return dest;
	}
	if (FUNC1(dest) || FUNC0(src))
		return dest;

	/* FIXME: there is almost certainly a smarter way to do this */
	FUNC2(&tmp, dest);
	FUNC4(&tmp, src);		/* NOTE: src might be modified */
	FUNC7(&tmp, mode);
	FUNC5(&tmp, src);
	FUNC6(dest, &tmp);

	/* set the quotient byte */
	FUNC9((dest->mant.m64 & 0x7f) | (dest->sign << 7));
	return dest;
}