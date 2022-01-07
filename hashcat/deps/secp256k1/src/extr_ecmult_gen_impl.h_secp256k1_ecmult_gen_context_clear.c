
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * prec; int initial; int blind; } ;
typedef TYPE_1__ secp256k1_ecmult_gen_context ;


 int secp256k1_gej_clear (int *) ;
 int secp256k1_scalar_clear (int *) ;

__attribute__((used)) static void secp256k1_ecmult_gen_context_clear(secp256k1_ecmult_gen_context *ctx) {
    secp256k1_scalar_clear(&ctx->blind);
    secp256k1_gej_clear(&ctx->initial);
    ctx->prec = ((void*)0);
}
