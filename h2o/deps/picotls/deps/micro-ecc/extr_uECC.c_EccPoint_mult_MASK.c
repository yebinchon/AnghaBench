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
typedef  int wordcount_t ;
typedef  int uECC_word_t ;
typedef  TYPE_1__* uECC_Curve ;
typedef  scalar_t__ bitcount_t ;
struct TYPE_8__ {int num_words; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int*,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*,int*,int const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*,TYPE_1__*) ; 
 int uECC_MAX_WORDS ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int const*,scalar_t__) ; 

__attribute__((used)) static void FUNC9(uECC_word_t * result,
                          const uECC_word_t * point,
                          const uECC_word_t * scalar,
                          const uECC_word_t * initial_Z,
                          bitcount_t num_bits,
                          uECC_Curve curve) {
    /* R0 and R1 */
    uECC_word_t Rx[2][uECC_MAX_WORDS];
    uECC_word_t Ry[2][uECC_MAX_WORDS];
    uECC_word_t z[uECC_MAX_WORDS];
    bitcount_t i;
    uECC_word_t nb;
    wordcount_t num_words = curve->num_words;

    FUNC7(Rx[1], point, num_words);
    FUNC7(Ry[1], point + num_words, num_words);

    FUNC2(Rx[1], Ry[1], Rx[0], Ry[0], initial_Z, curve);

    for (i = num_bits - 2; i > 0; --i) {
        nb = !FUNC8(scalar, i);
        FUNC1(Rx[1 - nb], Ry[1 - nb], Rx[nb], Ry[nb], curve);
        FUNC0(Rx[nb], Ry[nb], Rx[1 - nb], Ry[1 - nb], curve);
    }

    nb = !FUNC8(scalar, 0);
    FUNC1(Rx[1 - nb], Ry[1 - nb], Rx[nb], Ry[nb], curve);

    /* Find final 1/Z value. */
    FUNC6(z, Rx[1], Rx[0], curve->p, num_words); /* X1 - X0 */
    FUNC5(z, z, Ry[1 - nb], curve);               /* Yb * (X1 - X0) */
    FUNC5(z, z, point, curve);                    /* xP * Yb * (X1 - X0) */
    FUNC4(z, z, curve->p, num_words);            /* 1 / (xP * Yb * (X1 - X0)) */
    /* yP / (xP * Yb * (X1 - X0)) */
    FUNC5(z, z, point + num_words, curve);
    FUNC5(z, z, Rx[1 - nb], curve); /* Xb * yP / (xP * Yb * (X1 - X0)) */
    /* End 1/Z calculation */

    FUNC0(Rx[nb], Ry[nb], Rx[1 - nb], Ry[1 - nb], curve);
    FUNC3(Rx[0], Ry[0], z, curve);

    FUNC7(result, Rx[0], num_words);
    FUNC7(result + num_words, Ry[0], num_words);
}