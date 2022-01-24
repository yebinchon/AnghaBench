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
typedef  int /*<<< orphan*/  wordcount_t ;
typedef  int /*<<< orphan*/  uECC_word_t ;
typedef  TYPE_1__* uECC_Curve ;
struct TYPE_5__ {int /*<<< orphan*/  p; int /*<<< orphan*/  num_words; } ;

/* Variables and functions */
 int uECC_MAX_WORDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uECC_word_t * X1,
                      uECC_word_t * Y1,
                      uECC_word_t * X2,
                      uECC_word_t * Y2,
                      uECC_Curve curve) {
    /* t1 = X1, t2 = Y1, t3 = X2, t4 = Y2 */
    uECC_word_t t5[uECC_MAX_WORDS];
    uECC_word_t t6[uECC_MAX_WORDS];
    uECC_word_t t7[uECC_MAX_WORDS];
    wordcount_t num_words = curve->num_words;

    FUNC3(t5, X2, X1, curve->p, num_words); /* t5 = x2 - x1 */
    FUNC2(t5, t5, curve);                  /* t5 = (x2 - x1)^2 = A */
    FUNC1(X1, X1, t5, curve);                /* t1 = x1*A = B */
    FUNC1(X2, X2, t5, curve);                /* t3 = x2*A = C */
    FUNC0(t5, Y2, Y1, curve->p, num_words); /* t5 = y2 + y1 */
    FUNC3(Y2, Y2, Y1, curve->p, num_words); /* t4 = y2 - y1 */

    FUNC3(t6, X2, X1, curve->p, num_words); /* t6 = C - B */
    FUNC1(Y1, Y1, t6, curve);                /* t2 = y1 * (C - B) = E */
    FUNC0(t6, X1, X2, curve->p, num_words); /* t6 = B + C */
    FUNC2(X2, Y2, curve);                  /* t3 = (y2 - y1)^2 = D */
    FUNC3(X2, X2, t6, curve->p, num_words); /* t3 = D - (B + C) = x3 */

    FUNC3(t7, X1, X2, curve->p, num_words); /* t7 = B - x3 */
    FUNC1(Y2, Y2, t7, curve);                /* t4 = (y2 - y1)*(B - x3) */
    FUNC3(Y2, Y2, Y1, curve->p, num_words); /* t4 = (y2 - y1)*(B - x3) - E = y3 */

    FUNC2(t7, t5, curve);                  /* t7 = (y2 + y1)^2 = F */
    FUNC3(t7, t7, t6, curve->p, num_words); /* t7 = F - (B + C) = x3' */
    FUNC3(t6, t7, X1, curve->p, num_words); /* t6 = x3' - B */
    FUNC1(t6, t6, t5, curve);                /* t6 = (y2+y1)*(x3' - B) */
    FUNC3(Y1, t6, Y1, curve->p, num_words); /* t2 = (y2+y1)*(x3' - B) - E = y3' */

    FUNC4(X1, t7, num_words);
}