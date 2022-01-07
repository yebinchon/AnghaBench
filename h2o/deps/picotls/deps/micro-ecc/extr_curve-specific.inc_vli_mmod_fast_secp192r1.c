
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int p; } ;


 TYPE_1__ curve_secp192r1 ;
 int num_words_secp192r1 ;
 scalar_t__ uECC_vli_add (scalar_t__*,scalar_t__*,scalar_t__*,int) ;
 int uECC_vli_cmp_unsafe (int ,scalar_t__*,int) ;
 int uECC_vli_set (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ uECC_vli_sub (scalar_t__*,scalar_t__*,int ,int) ;

__attribute__((used)) static void vli_mmod_fast_secp192r1(uint64_t *result, uint64_t *product) {
    uint64_t tmp[num_words_secp192r1];
    int carry;

    uECC_vli_set(result, product, num_words_secp192r1);

    uECC_vli_set(tmp, &product[3], num_words_secp192r1);
    carry = (int)uECC_vli_add(result, result, tmp, num_words_secp192r1);

    tmp[0] = 0;
    tmp[1] = product[3];
    tmp[2] = product[4];
    carry += uECC_vli_add(result, result, tmp, num_words_secp192r1);

    tmp[0] = tmp[1] = product[5];
    tmp[2] = 0;
    carry += uECC_vli_add(result, result, tmp, num_words_secp192r1);

    while (carry || uECC_vli_cmp_unsafe(curve_secp192r1.p, result, num_words_secp192r1) != 1) {
        carry -= uECC_vli_sub(result, result, curve_secp192r1.p, num_words_secp192r1);
    }
}
