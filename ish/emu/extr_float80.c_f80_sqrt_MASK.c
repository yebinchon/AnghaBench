#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  exp; scalar_t__ sign; } ;
typedef  TYPE_1__ float80 ;

/* Variables and functions */
 TYPE_1__ F80_NAN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ FUNC1 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC2 (TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_1__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

float80 FUNC7(float80 x) {
    if (FUNC5(x) || x.sign)
        return F80_NAN;
    // for a rough guess, just cut the exponent by 2
    float80 guess = x;
    guess.exp = FUNC0(FUNC6(guess.exp) / 2);
    // now converge on the answer, using newton's method
    float80 old_guess;
    float80 two = FUNC4(2);
    int i = 0;
    do {
        old_guess = guess;
        guess = FUNC2(FUNC1(guess, FUNC2(x, guess)), two);
    } while (!FUNC3(guess, old_guess) && i++ < 100);
    return guess;
}