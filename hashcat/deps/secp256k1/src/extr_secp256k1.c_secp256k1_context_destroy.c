
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_context ;


 int free (int *) ;
 int secp256k1_context_preallocated_destroy (int *) ;

void secp256k1_context_destroy(secp256k1_context* ctx) {
    if (ctx != ((void*)0)) {
        secp256k1_context_preallocated_destroy(ctx);
        free(ctx);
    }
}
