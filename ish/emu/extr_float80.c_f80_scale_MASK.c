#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint128_t ;
struct TYPE_8__ {int /*<<< orphan*/  sign; int /*<<< orphan*/  exp; scalar_t__ signif; } ;
typedef  TYPE_1__ float80 ;

/* Variables and functions */
 TYPE_1__ F80_NAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 scalar_t__ FUNC1 (TYPE_1__) ; 
 TYPE_1__ FUNC2 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

float80 FUNC4(float80 x, int scale) {
    if (!FUNC0(x) || FUNC1(x))
        return F80_NAN;
    return FUNC2((uint128_t) x.signif << 64, FUNC3(x.exp) + scale, x.sign);
}