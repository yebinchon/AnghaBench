
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uECC_word_t ;
typedef int uECC_Curve ;
typedef int bitcount_t ;
struct TYPE_3__ {int p; } ;


 TYPE_1__ curve_secp224r1 ;
 int mod_sqrt_secp224r1_rp (int *,int *,int *,int *,int *) ;
 int mod_sqrt_secp224r1_rs (int *,int *,int *,int *,int *,int *) ;
 int num_words_secp224r1 ;
 scalar_t__ uECC_vli_isZero (int *,int) ;
 int uECC_vli_modInv (int *,int *,int ,int) ;
 int uECC_vli_modMult_fast (int *,int *,int *,TYPE_1__*) ;
 int uECC_vli_set (int *,int *,int) ;

__attribute__((used)) static void mod_sqrt_secp224r1(uECC_word_t *a, uECC_Curve curve) {
    bitcount_t i;
    uECC_word_t e1[num_words_secp224r1];
    uECC_word_t f1[num_words_secp224r1];
    uECC_word_t d0[num_words_secp224r1];
    uECC_word_t e0[num_words_secp224r1];
    uECC_word_t f0[num_words_secp224r1];
    uECC_word_t d1[num_words_secp224r1];


    mod_sqrt_secp224r1_rp(d0, e0, f0, a, a);
    mod_sqrt_secp224r1_rs(d1, e1, f1, d0, e0, f0);
    for (i = 1; i <= 95; i++) {
        uECC_vli_set(d0, d1, num_words_secp224r1);
        uECC_vli_set(e0, e1, num_words_secp224r1);
        uECC_vli_set(f0, f1, num_words_secp224r1);
        mod_sqrt_secp224r1_rs(d1, e1, f1, d0, e0, f0);
        if (uECC_vli_isZero(d1, num_words_secp224r1)) {
                break;
        }
    }
    uECC_vli_modInv(f1, e0, curve_secp224r1.p, num_words_secp224r1);
    uECC_vli_modMult_fast(a, d0, f1, &curve_secp224r1);
}
