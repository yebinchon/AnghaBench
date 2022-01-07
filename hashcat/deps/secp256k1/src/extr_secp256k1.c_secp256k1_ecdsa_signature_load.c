
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int secp256k1_scalar ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ secp256k1_ecdsa_signature ;
typedef int secp256k1_context ;


 int memcpy (int *,int *,int) ;
 int secp256k1_scalar_set_b32 (int *,int *,int *) ;

__attribute__((used)) static void secp256k1_ecdsa_signature_load(const secp256k1_context* ctx, secp256k1_scalar* r, secp256k1_scalar* s, const secp256k1_ecdsa_signature* sig) {
    (void)ctx;
    if (sizeof(secp256k1_scalar) == 32) {



        memcpy(r, &sig->data[0], 32);
        memcpy(s, &sig->data[32], 32);
    } else {
        secp256k1_scalar_set_b32(r, &sig->data[0], ((void*)0));
        secp256k1_scalar_set_b32(s, &sig->data[32], ((void*)0));
    }
}
