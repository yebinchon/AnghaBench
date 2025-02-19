
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
struct TYPE_2__ {int ecmult_ctx; } ;


 int CHECK (int) ;
 int SECP256K1_SCALAR_CONST (int ,int ,int ,int ,int ,int ,int ,int) ;
 TYPE_1__* ctx ;
 int ge_equals_ge (int *,int *) ;
 int ge_equals_gej (int *,int const*) ;
 int random_scalar_order_test (int *) ;
 scalar_t__ secp256k1_eckey_pubkey_serialize (int *,unsigned char*,size_t*,int) ;
 int secp256k1_ecmult (int *,int *,int const*,int *,int *) ;
 int secp256k1_ge_const_g ;
 int secp256k1_ge_is_infinity (int *) ;
 scalar_t__ secp256k1_ge_is_valid_var (int *) ;
 int secp256k1_ge_set_gej (int *,int *) ;
 int secp256k1_gej_add_var (int *,int *,int *,int *) ;
 int secp256k1_gej_is_infinity (int *) ;
 scalar_t__ secp256k1_gej_is_valid_var (int *) ;
 int secp256k1_scalar_negate (int *,int *) ;

void test_point_times_order(const secp256k1_gej *point) {

    secp256k1_scalar x;
    secp256k1_scalar nx;
    secp256k1_scalar zero = SECP256K1_SCALAR_CONST(0, 0, 0, 0, 0, 0, 0, 0);
    secp256k1_scalar one = SECP256K1_SCALAR_CONST(0, 0, 0, 0, 0, 0, 0, 1);
    secp256k1_gej res1, res2;
    secp256k1_ge res3;
    unsigned char pub[65];
    size_t psize = 65;
    random_scalar_order_test(&x);
    secp256k1_scalar_negate(&nx, &x);
    secp256k1_ecmult(&ctx->ecmult_ctx, &res1, point, &x, &x);
    secp256k1_ecmult(&ctx->ecmult_ctx, &res2, point, &nx, &nx);
    secp256k1_gej_add_var(&res1, &res1, &res2, ((void*)0));
    CHECK(secp256k1_gej_is_infinity(&res1));
    CHECK(secp256k1_gej_is_valid_var(&res1) == 0);
    secp256k1_ge_set_gej(&res3, &res1);
    CHECK(secp256k1_ge_is_infinity(&res3));
    CHECK(secp256k1_ge_is_valid_var(&res3) == 0);
    CHECK(secp256k1_eckey_pubkey_serialize(&res3, pub, &psize, 0) == 0);
    psize = 65;
    CHECK(secp256k1_eckey_pubkey_serialize(&res3, pub, &psize, 1) == 0);

    secp256k1_ecmult(&ctx->ecmult_ctx, &res1, point, &zero, &zero);
    secp256k1_ge_set_gej(&res3, &res1);
    CHECK(secp256k1_ge_is_infinity(&res3));
    secp256k1_ecmult(&ctx->ecmult_ctx, &res1, point, &one, &zero);
    secp256k1_ge_set_gej(&res3, &res1);
    ge_equals_gej(&res3, point);
    secp256k1_ecmult(&ctx->ecmult_ctx, &res1, point, &zero, &one);
    secp256k1_ge_set_gej(&res3, &res1);
    ge_equals_ge(&res3, &secp256k1_ge_const_g);
}
