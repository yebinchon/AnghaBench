
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int secp256k1_ge_storage ;
struct TYPE_4__ {int ** pre_g_128; int ** pre_g; } ;
typedef TYPE_1__ secp256k1_ecmult_context ;



__attribute__((used)) static void secp256k1_ecmult_context_finalize_memcpy(secp256k1_ecmult_context *dst, const secp256k1_ecmult_context *src) {
    if (src->pre_g != ((void*)0)) {

        dst->pre_g = (secp256k1_ge_storage (*)[])(void*)((unsigned char*)dst + ((unsigned char*)(src->pre_g) - (unsigned char*)src));
    }





}
