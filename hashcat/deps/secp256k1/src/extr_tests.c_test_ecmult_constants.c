
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
struct TYPE_2__ {int ecmult_gen_ctx; } ;


 int CHECK (int ) ;
 TYPE_1__* ctx ;
 int ge_equals_gej (int *,int *) ;
 int secp256k1_ecmult_gen (int *,int *,int *) ;
 int secp256k1_ge_const_g ;
 int secp256k1_ge_neg (int *,int *) ;
 int secp256k1_gej_add_ge (int *,int *,int *) ;
 int secp256k1_gej_is_infinity (int *) ;
 int secp256k1_scalar_negate (int *,int *) ;
 int secp256k1_scalar_set_int (int *,int) ;

void test_ecmult_constants(void) {

    secp256k1_scalar x;
    secp256k1_gej r;
    secp256k1_ge ng;
    int i;
    int j;
    secp256k1_ge_neg(&ng, &secp256k1_ge_const_g);
    for (i = 0; i < 36; i++ ) {
        secp256k1_scalar_set_int(&x, i);
        secp256k1_ecmult_gen(&ctx->ecmult_gen_ctx, &r, &x);
        for (j = 0; j < i; j++) {
            if (j == i - 1) {
                ge_equals_gej(&secp256k1_ge_const_g, &r);
            }
            secp256k1_gej_add_ge(&r, &r, &ng);
        }
        CHECK(secp256k1_gej_is_infinity(&r));
    }
    for (i = 1; i <= 36; i++ ) {
        secp256k1_scalar_set_int(&x, i);
        secp256k1_scalar_negate(&x, &x);
        secp256k1_ecmult_gen(&ctx->ecmult_gen_ctx, &r, &x);
        for (j = 0; j < i; j++) {
            if (j == i - 1) {
                ge_equals_gej(&ng, &r);
            }
            secp256k1_gej_add_ge(&r, &r, &secp256k1_ge_const_g);
        }
        CHECK(secp256k1_gej_is_infinity(&r));
    }
}
