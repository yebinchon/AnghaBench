
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ecmult_ctx; int ecmult_gen_ctx; } ;
typedef TYPE_1__ secp256k1_context ;


 size_t ROUND_TO_ALIGN (int) ;
 scalar_t__ SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE ;
 scalar_t__ SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE ;
 int VERIFY_CHECK (int ) ;
 scalar_t__ secp256k1_ecmult_context_is_built (int *) ;
 scalar_t__ secp256k1_ecmult_gen_context_is_built (int *) ;

size_t secp256k1_context_preallocated_clone_size(const secp256k1_context* ctx) {
    size_t ret = ROUND_TO_ALIGN(sizeof(secp256k1_context));
    VERIFY_CHECK(ctx != ((void*)0));
    if (secp256k1_ecmult_gen_context_is_built(&ctx->ecmult_gen_ctx)) {
        ret += SECP256K1_ECMULT_GEN_CONTEXT_PREALLOCATED_SIZE;
    }
    if (secp256k1_ecmult_context_is_built(&ctx->ecmult_ctx)) {
        ret += SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE;
    }
    return ret;
}
