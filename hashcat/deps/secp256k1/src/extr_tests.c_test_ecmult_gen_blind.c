
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
struct TYPE_4__ {int initial; int blind; } ;
struct TYPE_5__ {TYPE_1__ ecmult_gen_ctx; } ;


 int CHECK (int) ;
 TYPE_3__* ctx ;
 int ge_equals_gej (int *,int *) ;
 int gej_xyz_equals_gej (int *,int *) ;
 int random_scalar_order_test (int *) ;
 int secp256k1_ecmult_gen (TYPE_1__*,int *,int *) ;
 int secp256k1_ecmult_gen_blind (TYPE_1__*,unsigned char*) ;
 int secp256k1_ge_set_gej (int *,int *) ;
 int secp256k1_rand256 (unsigned char*) ;
 int secp256k1_scalar_eq (int *,int *) ;

void test_ecmult_gen_blind(void) {

    secp256k1_scalar key;
    secp256k1_scalar b;
    unsigned char seed32[32];
    secp256k1_gej pgej;
    secp256k1_gej pgej2;
    secp256k1_gej i;
    secp256k1_ge pge;
    random_scalar_order_test(&key);
    secp256k1_ecmult_gen(&ctx->ecmult_gen_ctx, &pgej, &key);
    secp256k1_rand256(seed32);
    b = ctx->ecmult_gen_ctx.blind;
    i = ctx->ecmult_gen_ctx.initial;
    secp256k1_ecmult_gen_blind(&ctx->ecmult_gen_ctx, seed32);
    CHECK(!secp256k1_scalar_eq(&b, &ctx->ecmult_gen_ctx.blind));
    secp256k1_ecmult_gen(&ctx->ecmult_gen_ctx, &pgej2, &key);
    CHECK(!gej_xyz_equals_gej(&pgej, &pgej2));
    CHECK(!gej_xyz_equals_gej(&i, &ctx->ecmult_gen_ctx.initial));
    secp256k1_ge_set_gej(&pge, &pgej);
    ge_equals_gej(&pge, &pgej2);
}
