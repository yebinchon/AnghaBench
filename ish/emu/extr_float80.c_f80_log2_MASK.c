#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ signif; scalar_t__ exp; scalar_t__ sign; } ;
typedef  TYPE_1__ float80 ;

/* Variables and functions */
 TYPE_1__ F80_NAN ; 
 TYPE_1__ FUNC0 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC1 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ FUNC4 (TYPE_1__) ; 
 scalar_t__ FUNC5 (TYPE_1__,TYPE_1__) ; 
 scalar_t__ FUNC6 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC7 (TYPE_1__,TYPE_1__) ; 

float80 FUNC8(float80 x) {
    float80 zero = FUNC2(0);
    float80 one = FUNC2(1);
    float80 two = FUNC2(2);
    if (FUNC4(x) || FUNC6(x, zero))
        return F80_NAN;

    int ipart = 0;
    while (FUNC5(x, one)) {
        ipart--;
        x = FUNC7(x, two);
    }
    while (FUNC3(x, two)) {
        ipart++;
        x = FUNC1(x, two);
    }
    float80 res = FUNC2(ipart);

    float80 bit = one;
    while (FUNC3(bit, zero)) {
        while (FUNC6(x, two) && FUNC3(bit, zero)) {
            x = FUNC7(x, x);
            bit = FUNC1(bit, two);
        }
        float80 oldres = res;
        res = FUNC0(res, bit);
        if (oldres.signif == res.signif && oldres.exp == res.exp && oldres.sign == res.sign)
            break;
        x = FUNC1(x, two);
    }
    return res;
}