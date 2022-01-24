#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint128_t ;
struct TYPE_12__ {int sign; int signif; int /*<<< orphan*/  exp; } ;
typedef  TYPE_1__ float80 ;

/* Variables and functions */
 TYPE_1__ F80_INF ; 
 TYPE_1__ F80_NAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 scalar_t__ FUNC1 (TYPE_1__) ; 
 scalar_t__ FUNC2 (TYPE_1__) ; 
 scalar_t__ FUNC3 (TYPE_1__) ; 
 TYPE_1__ FUNC4 (int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

float80 FUNC6(float80 a, float80 b) {
    if (!FUNC0(a) || !FUNC0(b))
        return F80_NAN;
    if (FUNC2(a))
        return F80_NAN;
    if (FUNC2(b))
        return F80_NAN;

    if (FUNC1(a) || FUNC1(b)) {
        // infinity times zero is undefined
        if (FUNC3(a) || FUNC3(b))
            return F80_NAN;
        // infinity times anything else is infinity
        float80 f = F80_INF;
        f.sign = a.sign ^ b.sign;
        return f;
    }

    // add exponents (the +1 is necessary to be correct in 128-bit precision)
    int f_exp = FUNC5(a.exp) + FUNC5(b.exp) + 1;
    // multiply significands
    uint128_t f_signif = (uint128_t) a.signif * b.signif;
    // normalize and round the 128-bit result
    float80 f = FUNC4(f_signif, f_exp, a.sign ^ b.sign);
    // xor signs
    f.sign = a.sign ^ b.sign;
    return f;
}