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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(uECC_word_t * X1,
                     uECC_word_t * Y1,
                     uECC_word_t * X2,
                     uECC_word_t * Y2,
                     uECC_Curve curve) {
    /* t1 = X1, t2 = Y1, t3 = X2, t4 = Y2 */
    uECC_word_t t5[uECC_MAX_WORDS];
    wordcount_t num_words = curve->num_words;

    FUNC2(t5, X2, X1, curve->p, num_words); /* t5 = x2 - x1 */
    FUNC1(t5, t5, curve);                  /* t5 = (x2 - x1)^2 = A */
    FUNC0(X1, X1, t5, curve);                /* t1 = x1*A = B */
    FUNC0(X2, X2, t5, curve);                /* t3 = x2*A = C */
    FUNC2(Y2, Y2, Y1, curve->p, num_words); /* t4 = y2 - y1 */
    FUNC1(t5, Y2, curve);                  /* t5 = (y2 - y1)^2 = D */

    FUNC2(t5, t5, X1, curve->p, num_words); /* t5 = D - B */
    FUNC2(t5, t5, X2, curve->p, num_words); /* t5 = D - B - C = x3 */
    FUNC2(X2, X2, X1, curve->p, num_words); /* t3 = C - B */
    FUNC0(Y1, Y1, X2, curve);                /* t2 = y1*(C - B) */
    FUNC2(X2, X1, t5, curve->p, num_words); /* t3 = B - x3 */
    FUNC0(Y2, Y2, X2, curve);                /* t4 = (y2 - y1)*(B - x3) */
    FUNC2(Y2, Y2, Y1, curve->p, num_words); /* t4 = y3 */

    FUNC3(X2, t5, num_words);
}