
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ wordcount_t ;
typedef int const uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
typedef int bitcount_t ;
struct TYPE_3__ {int num_n_bits; int n; } ;


 scalar_t__ BITS_TO_WORDS (int) ;
 int uECC_WORD_SIZE ;
 scalar_t__ uECC_vli_add (int const*,int const*,int ,scalar_t__) ;
 scalar_t__ uECC_vli_testBit (int const*,int) ;

__attribute__((used)) static uECC_word_t regularize_k(const uECC_word_t * const k,
                                uECC_word_t *k0,
                                uECC_word_t *k1,
                                uECC_Curve curve) {
    wordcount_t num_n_words = BITS_TO_WORDS(curve->num_n_bits);
    bitcount_t num_n_bits = curve->num_n_bits;
    uECC_word_t carry = uECC_vli_add(k0, k, curve->n, num_n_words) ||
        (num_n_bits < ((bitcount_t)num_n_words * uECC_WORD_SIZE * 8) &&
         uECC_vli_testBit(k0, num_n_bits));
    uECC_vli_add(k1, k0, curve->n, num_n_words);
    return carry;
}
