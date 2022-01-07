
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uECC_word_t ;
typedef TYPE_1__* uECC_Curve ;
struct TYPE_5__ {int num_words; int num_bytes; int p; int (* mod_sqrt ) (int*,TYPE_1__*) ;int (* x_side ) (int*,int*,TYPE_1__*) ;} ;


 int bcopy (int*,int const*,int ) ;
 int stub1 (int*,int*,TYPE_1__*) ;
 int stub2 (int*,TYPE_1__*) ;
 int uECC_MAX_WORDS ;
 int uECC_vli_bytesToNative (int*,int const*,int ) ;
 int uECC_vli_nativeToBytes (int*,int ,int*) ;
 int uECC_vli_sub (int*,int ,int*,int) ;

void uECC_decompress(const uint8_t *compressed, uint8_t *public_key, uECC_Curve curve) {



    uECC_word_t point[uECC_MAX_WORDS * 2];

    uECC_word_t *y = point + curve->num_words;



    uECC_vli_bytesToNative(point, compressed + 1, curve->num_bytes);

    curve->x_side(y, point, curve);
    curve->mod_sqrt(y, curve);

    if ((y[0] & 0x01) != (compressed[0] & 0x01)) {
        uECC_vli_sub(y, curve->p, y, curve->num_words);
    }


    uECC_vli_nativeToBytes(public_key, curve->num_bytes, point);
    uECC_vli_nativeToBytes(public_key + curve->num_bytes, curve->num_bytes, y);

}
