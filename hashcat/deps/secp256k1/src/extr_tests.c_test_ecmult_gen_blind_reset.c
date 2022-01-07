
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
struct TYPE_3__ {int initial; int blind; } ;
struct TYPE_4__ {TYPE_1__ ecmult_gen_ctx; } ;


 int CHECK (int ) ;
 TYPE_2__* ctx ;
 int gej_xyz_equals_gej (int *,int *) ;
 int secp256k1_ecmult_gen_blind (TYPE_1__*,int ) ;
 int secp256k1_scalar_eq (int *,int *) ;

void test_ecmult_gen_blind_reset(void) {

    secp256k1_scalar b;
    secp256k1_gej initial;
    secp256k1_ecmult_gen_blind(&ctx->ecmult_gen_ctx, 0);
    b = ctx->ecmult_gen_ctx.blind;
    initial = ctx->ecmult_gen_ctx.initial;
    secp256k1_ecmult_gen_blind(&ctx->ecmult_gen_ctx, 0);
    CHECK(secp256k1_scalar_eq(&b, &ctx->ecmult_gen_ctx.blind));
    CHECK(gej_xyz_equals_gej(&initial, &ctx->ecmult_gen_ctx.initial));
}
