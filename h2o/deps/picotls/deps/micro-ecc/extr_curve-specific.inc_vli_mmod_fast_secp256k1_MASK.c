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
typedef  scalar_t__ uECC_word_t ;
struct TYPE_2__ {int /*<<< orphan*/  p; } ;

/* Variables and functions */
 TYPE_1__ curve_secp256k1 ; 
 int num_words_secp256k1 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(uECC_word_t *result, uECC_word_t *product) {
    uECC_word_t tmp[2 * num_words_secp256k1];
    uECC_word_t carry;
    
    FUNC2(tmp, num_words_secp256k1);
    FUNC2(tmp + num_words_secp256k1, num_words_secp256k1);
    
    FUNC0(tmp, product + num_words_secp256k1); /* (Rq, q) = q * c */
    
    carry = FUNC1(result, product, tmp, num_words_secp256k1); /* (C, r) = r + q       */
    FUNC2(product, num_words_secp256k1);
    FUNC0(product, tmp + num_words_secp256k1); /* Rq*c */
    carry += FUNC1(result, result, product, num_words_secp256k1); /* (C1, r) = r + Rq*c */
    
    while (carry > 0) {
        --carry;
        FUNC4(result, result, curve_secp256k1.p, num_words_secp256k1);
    }
    if (FUNC3(result, curve_secp256k1.p, num_words_secp256k1) > 0) {
        FUNC4(result, result, curve_secp256k1.p, num_words_secp256k1);
    }
}