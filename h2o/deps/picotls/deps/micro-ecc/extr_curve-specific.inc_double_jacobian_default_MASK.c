#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int wordcount_t ;
typedef  int uECC_word_t ;
typedef  TYPE_1__* uECC_Curve ;
struct TYPE_5__ {int num_words; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int uECC_MAX_WORDS ; 
 int uECC_WORD_BITS ; 
 int FUNC0 (int*,int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int) ; 
 scalar_t__ FUNC8 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(uECC_word_t * X1,
                                    uECC_word_t * Y1,
                                    uECC_word_t * Z1,
                                    uECC_Curve curve) {
    /* t1 = X, t2 = Y, t3 = Z */
    uECC_word_t t4[uECC_MAX_WORDS];
    uECC_word_t t5[uECC_MAX_WORDS];
    wordcount_t num_words = curve->num_words;

    if (FUNC1(Z1, num_words)) {
        return;
    }

    FUNC4(t4, Y1, curve);   /* t4 = y1^2 */
    FUNC3(t5, X1, t4, curve); /* t5 = x1*y1^2 = A */
    FUNC4(t4, t4, curve);   /* t4 = y1^4 */
    FUNC3(Y1, Y1, Z1, curve); /* t2 = y1*z1 = z3 */
    FUNC4(Z1, Z1, curve);   /* t3 = z1^2 */

    FUNC2(X1, X1, Z1, curve->p, num_words); /* t1 = x1 + z1^2 */
    FUNC2(Z1, Z1, Z1, curve->p, num_words); /* t3 = 2*z1^2 */
    FUNC5(Z1, X1, Z1, curve->p, num_words); /* t3 = x1 - z1^2 */
    FUNC3(X1, X1, Z1, curve);                /* t1 = x1^2 - z1^4 */

    FUNC2(Z1, X1, X1, curve->p, num_words); /* t3 = 2*(x1^2 - z1^4) */
    FUNC2(X1, X1, Z1, curve->p, num_words); /* t1 = 3*(x1^2 - z1^4) */
    if (FUNC8(X1, 0)) {
        uECC_word_t l_carry = FUNC0(X1, X1, curve->p, num_words);
        FUNC6(X1, num_words);
        X1[num_words - 1] |= l_carry << (uECC_WORD_BITS - 1);
    } else {
        FUNC6(X1, num_words);
    }
    /* t1 = 3/2*(x1^2 - z1^4) = B */

    FUNC4(Z1, X1, curve);                  /* t3 = B^2 */
    FUNC5(Z1, Z1, t5, curve->p, num_words); /* t3 = B^2 - A */
    FUNC5(Z1, Z1, t5, curve->p, num_words); /* t3 = B^2 - 2A = x3 */
    FUNC5(t5, t5, Z1, curve->p, num_words); /* t5 = A - x3 */
    FUNC3(X1, X1, t5, curve);                /* t1 = B * (A - x3) */
    FUNC5(t4, X1, t4, curve->p, num_words); /* t4 = B * (A - x3) - y1^4 = y3 */

    FUNC7(X1, Z1, num_words);
    FUNC7(Z1, Y1, num_words);
    FUNC7(Y1, t4, num_words);
}