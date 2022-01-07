
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ecmult_gen_ctx; } ;
typedef TYPE_1__ secp256k1_context ;


 int VERIFY_CHECK (int ) ;
 int secp256k1_ecmult_gen_blind (int *,unsigned char const*) ;
 scalar_t__ secp256k1_ecmult_gen_context_is_built (int *) ;

int secp256k1_context_randomize(secp256k1_context* ctx, const unsigned char *seed32) {
    VERIFY_CHECK(ctx != ((void*)0));
    if (secp256k1_ecmult_gen_context_is_built(&ctx->ecmult_gen_ctx)) {
        secp256k1_ecmult_gen_blind(&ctx->ecmult_gen_ctx, seed32);
    }
    return 1;
}
