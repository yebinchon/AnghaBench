#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int sigh; int /*<<< orphan*/  sigl; } ;
typedef  TYPE_1__ FPU_REG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EXP_UNDER ; 
 int EX_INTERNAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC7(FPU_REG const *a, FPU_REG *x)
{
	int sign = FUNC5(a);

	*(long long *)&(x->sigl) = *(const long long *)&(a->sigl);

	/* Set up the exponent as a 16 bit quantity. */
	FUNC6(x, FUNC3(a));

	if (FUNC4(x) == EXP_UNDER) {
		/* The number is a de-normal or pseudodenormal. */
		/* We only deal with the significand and exponent. */

		if (x->sigh & 0x80000000) {
			/* Is a pseudodenormal. */
			/* This is non-80486 behaviour because the number
			   loses its 'denormal' identity. */
			FUNC2(x, 1);
		} else {
			/* Is a denormal. */
			FUNC2(x, 1);
			FUNC1(x);
		}
	}

	if (!(x->sigh & 0x80000000)) {
		FUNC0(EX_INTERNAL | 0x180);
	}

	return sign;
}