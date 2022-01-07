
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_5__ {int p; int b; } ;


 int num_words_secp256k1 ;
 int uECC_vli_modAdd (int *,int *,int ,int ,int ) ;
 int uECC_vli_modMult_fast (int *,int *,int const*,TYPE_1__*) ;
 int uECC_vli_modSquare_fast (int *,int const*,TYPE_1__*) ;

__attribute__((used)) static void x_side_secp256k1(uECC_word_t *result, const uECC_word_t *x, uECC_Curve curve) {
    uECC_vli_modSquare_fast(result, x, curve);
    uECC_vli_modMult_fast(result, result, x, curve);
    uECC_vli_modAdd(result, result, curve->b, curve->p, num_words_secp256k1);
}
