#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int wordcount_t ;
typedef  int /*<<< orphan*/  uECC_word_t ;
typedef  TYPE_1__* uECC_Curve ;
struct TYPE_6__ {int num_words; int /*<<< orphan*/  (* x_side ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ;int /*<<< orphan*/  p; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int uECC_MAX_WORDS ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ; 

int FUNC5(const uECC_word_t *point, uECC_Curve curve) {
    uECC_word_t tmp1[uECC_MAX_WORDS];
    uECC_word_t tmp2[uECC_MAX_WORDS];
    wordcount_t num_words = curve->num_words;

    /* The point at infinity is invalid. */
    if (FUNC0(point, curve)) {
        return 0;
    }

    /* x and y must be smaller than p. */
    if (FUNC2(curve->p, point, num_words) != 1 ||
            FUNC2(curve->p, point + num_words, num_words) != 1) {
        return 0;
    }

    FUNC4(tmp1, point + num_words, curve);
    curve->x_side(tmp2, point, curve); /* tmp2 = x^3 + ax + b */

    /* Make sure that y^2 == x^3 + ax + b */
    return (int)(FUNC3(tmp1, tmp2, num_words));
}