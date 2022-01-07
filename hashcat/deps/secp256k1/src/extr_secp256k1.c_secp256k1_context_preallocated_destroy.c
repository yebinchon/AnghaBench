
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ecmult_gen_ctx; int ecmult_ctx; } ;
typedef TYPE_1__ secp256k1_context ;


 int ARG_CHECK_NO_RETURN (int) ;
 TYPE_1__* secp256k1_context_no_precomp ;
 int secp256k1_ecmult_context_clear (int *) ;
 int secp256k1_ecmult_gen_context_clear (int *) ;

void secp256k1_context_preallocated_destroy(secp256k1_context* ctx) {
    ARG_CHECK_NO_RETURN(ctx != secp256k1_context_no_precomp);
    if (ctx != ((void*)0)) {
        secp256k1_ecmult_context_clear(&ctx->ecmult_ctx);
        secp256k1_ecmult_gen_context_clear(&ctx->ecmult_gen_ctx);
    }
}
