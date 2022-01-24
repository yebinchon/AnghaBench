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
typedef  int /*<<< orphan*/  uECC_word_t ;
typedef  TYPE_1__* uECC_Curve ;
struct TYPE_5__ {int /*<<< orphan*/  p; int /*<<< orphan*/  b; } ;

/* Variables and functions */
 int /*<<< orphan*/  num_words_secp256k1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(uECC_word_t *result, const uECC_word_t *x, uECC_Curve curve) {
    FUNC2(result, x, curve);                                /* r = x^2 */
    FUNC1(result, result, x, curve);                          /* r = x^3 */
    FUNC0(result, result, curve->b, curve->p, num_words_secp256k1); /* r = x^3 + b */
}