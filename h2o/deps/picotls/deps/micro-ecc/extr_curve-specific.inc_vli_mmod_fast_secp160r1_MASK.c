#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uECC_word_t ;
struct TYPE_2__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 TYPE_1__ curve_secp160r1 ; 
 int num_words_secp160r1 ; 
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(uECC_word_t *result, uECC_word_t *product) {
    uECC_word_t tmp[2 * num_words_secp160r1];
    uECC_word_t copy;
    
    FUNC2(tmp, num_words_secp160r1);
    FUNC2(tmp + num_words_secp160r1, num_words_secp160r1);

    FUNC0(tmp, product + num_words_secp160r1 - 1); /* (Rq, q) = q * c */
    
    product[num_words_secp160r1 - 1] &= 0xffffffff;
    copy = tmp[num_words_secp160r1 - 1];
    tmp[num_words_secp160r1 - 1] &= 0xffffffff;
    FUNC1(result, product, tmp, num_words_secp160r1); /* (C, r) = r + q */
    FUNC2(product, num_words_secp160r1);
    tmp[num_words_secp160r1 - 1] = copy;
    FUNC0(product, tmp + num_words_secp160r1 - 1); /* Rq*c */
    FUNC1(result, result, product, num_words_secp160r1); /* (C1, r) = r + Rq*c */

    while (FUNC3(result, curve_secp160r1.p, num_words_secp160r1) > 0) {
        FUNC4(result, result, curve_secp160r1.p, num_words_secp160r1);
    }
}