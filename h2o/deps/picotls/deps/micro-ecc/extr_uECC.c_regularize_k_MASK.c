#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wordcount_t ;
typedef  int const uECC_word_t ;
typedef  TYPE_1__* uECC_Curve ;
typedef  int bitcount_t ;
struct TYPE_3__ {int num_n_bits; int /*<<< orphan*/  n; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int uECC_WORD_SIZE ; 
 scalar_t__ FUNC1 (int const*,int const*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int const*,int) ; 

__attribute__((used)) static uECC_word_t FUNC3(const uECC_word_t * const k,
                                uECC_word_t *k0,
                                uECC_word_t *k1,
                                uECC_Curve curve) {
    wordcount_t num_n_words = FUNC0(curve->num_n_bits);
    bitcount_t num_n_bits = curve->num_n_bits;
    uECC_word_t carry = FUNC1(k0, k, curve->n, num_n_words) ||
        (num_n_bits < ((bitcount_t)num_n_words * uECC_WORD_SIZE * 8) &&
         FUNC2(k0, num_n_bits));
    FUNC1(k1, k0, curve->n, num_n_words);
    return carry;
}