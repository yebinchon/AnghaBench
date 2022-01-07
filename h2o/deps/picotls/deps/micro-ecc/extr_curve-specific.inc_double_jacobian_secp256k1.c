
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_5__ {int p; } ;


 int num_words_secp256k1 ;
 int uECC_WORD_BITS ;
 int uECC_vli_add (int*,int*,int ,int) ;
 scalar_t__ uECC_vli_isZero (int*,int) ;
 int uECC_vli_modAdd (int*,int*,int*,int ,int) ;
 int uECC_vli_modMult_fast (int*,int*,int*,TYPE_1__*) ;
 int uECC_vli_modSquare_fast (int*,int*,TYPE_1__*) ;
 int uECC_vli_modSub (int*,int*,int*,int ,int) ;
 int uECC_vli_rshift1 (int*,int) ;
 scalar_t__ uECC_vli_testBit (int*,int ) ;

__attribute__((used)) static void double_jacobian_secp256k1(uECC_word_t * X1,
                                      uECC_word_t * Y1,
                                      uECC_word_t * Z1,
                                      uECC_Curve curve) {

    uECC_word_t t4[num_words_secp256k1];
    uECC_word_t t5[num_words_secp256k1];

    if (uECC_vli_isZero(Z1, num_words_secp256k1)) {
        return;
    }

    uECC_vli_modSquare_fast(t5, Y1, curve);
    uECC_vli_modMult_fast(t4, X1, t5, curve);
    uECC_vli_modSquare_fast(X1, X1, curve);
    uECC_vli_modSquare_fast(t5, t5, curve);
    uECC_vli_modMult_fast(Z1, Y1, Z1, curve);

    uECC_vli_modAdd(Y1, X1, X1, curve->p, num_words_secp256k1);
    uECC_vli_modAdd(Y1, Y1, X1, curve->p, num_words_secp256k1);
    if (uECC_vli_testBit(Y1, 0)) {
        uECC_word_t carry = uECC_vli_add(Y1, Y1, curve->p, num_words_secp256k1);
        uECC_vli_rshift1(Y1, num_words_secp256k1);
        Y1[num_words_secp256k1 - 1] |= carry << (uECC_WORD_BITS - 1);
    } else {
        uECC_vli_rshift1(Y1, num_words_secp256k1);
    }


    uECC_vli_modSquare_fast(X1, Y1, curve);
    uECC_vli_modSub(X1, X1, t4, curve->p, num_words_secp256k1);
    uECC_vli_modSub(X1, X1, t4, curve->p, num_words_secp256k1);

    uECC_vli_modSub(t4, t4, X1, curve->p, num_words_secp256k1);
    uECC_vli_modMult_fast(Y1, Y1, t4, curve);
    uECC_vli_modSub(Y1, Y1, t5, curve->p, num_words_secp256k1);
}
