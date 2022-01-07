
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uECC_word_t ;
struct TYPE_2__ {int p; } ;


 TYPE_1__ curve_secp160r1 ;
 int num_words_secp160r1 ;
 int omega_mult_secp160r1 (int*,int*) ;
 int uECC_vli_add (int*,int*,int*,int) ;
 int uECC_vli_clear (int*,int) ;
 scalar_t__ uECC_vli_cmp_unsafe (int*,int ,int) ;
 int uECC_vli_sub (int*,int*,int ,int) ;

__attribute__((used)) static void vli_mmod_fast_secp160r1(uECC_word_t *result, uECC_word_t *product) {
    uECC_word_t tmp[2 * num_words_secp160r1];
    uECC_word_t copy;

    uECC_vli_clear(tmp, num_words_secp160r1);
    uECC_vli_clear(tmp + num_words_secp160r1, num_words_secp160r1);

    omega_mult_secp160r1(tmp, product + num_words_secp160r1 - 1);

    product[num_words_secp160r1 - 1] &= 0xffffffff;
    copy = tmp[num_words_secp160r1 - 1];
    tmp[num_words_secp160r1 - 1] &= 0xffffffff;
    uECC_vli_add(result, product, tmp, num_words_secp160r1);
    uECC_vli_clear(product, num_words_secp160r1);
    tmp[num_words_secp160r1 - 1] = copy;
    omega_mult_secp160r1(product, tmp + num_words_secp160r1 - 1);
    uECC_vli_add(result, result, product, num_words_secp160r1);

    while (uECC_vli_cmp_unsafe(result, curve_secp160r1.p, num_words_secp160r1) > 0) {
        uECC_vli_sub(result, result, curve_secp160r1.p, num_words_secp160r1);
    }
}
