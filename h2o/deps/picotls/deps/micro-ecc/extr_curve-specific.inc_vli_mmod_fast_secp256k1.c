
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uECC_word_t ;
struct TYPE_2__ {int p; } ;


 TYPE_1__ curve_secp256k1 ;
 int num_words_secp256k1 ;
 int omega_mult_secp256k1 (scalar_t__*,scalar_t__*) ;
 scalar_t__ uECC_vli_add (scalar_t__*,scalar_t__*,scalar_t__*,int) ;
 int uECC_vli_clear (scalar_t__*,int) ;
 scalar_t__ uECC_vli_cmp_unsafe (scalar_t__*,int ,int) ;
 int uECC_vli_sub (scalar_t__*,scalar_t__*,int ,int) ;

__attribute__((used)) static void vli_mmod_fast_secp256k1(uECC_word_t *result, uECC_word_t *product) {
    uECC_word_t tmp[2 * num_words_secp256k1];
    uECC_word_t carry;

    uECC_vli_clear(tmp, num_words_secp256k1);
    uECC_vli_clear(tmp + num_words_secp256k1, num_words_secp256k1);

    omega_mult_secp256k1(tmp, product + num_words_secp256k1);

    carry = uECC_vli_add(result, product, tmp, num_words_secp256k1);
    uECC_vli_clear(product, num_words_secp256k1);
    omega_mult_secp256k1(product, tmp + num_words_secp256k1);
    carry += uECC_vli_add(result, result, product, num_words_secp256k1);

    while (carry > 0) {
        --carry;
        uECC_vli_sub(result, result, curve_secp256k1.p, num_words_secp256k1);
    }
    if (uECC_vli_cmp_unsafe(result, curve_secp256k1.p, num_words_secp256k1) > 0) {
        uECC_vli_sub(result, result, curve_secp256k1.p, num_words_secp256k1);
    }
}
