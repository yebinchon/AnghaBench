
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_pubkey ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
typedef int sd ;
struct TYPE_3__ {int ecmult_gen_ctx; } ;


 int CHECK (int) ;
 int SECP256K1_SCALAR_CONST (int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__* ctx ;
 scalar_t__ memcmp (int *,int *,int) ;
 int random_scalar_order_test (int *) ;
 int secp256k1_ec_pubkey_combine (TYPE_1__*,int *,int const**,int) ;
 int secp256k1_ecmult_gen (int *,int *,int *) ;
 int secp256k1_ge_set_gej (int *,int *) ;
 int secp256k1_pubkey_save (int *,int *) ;
 int secp256k1_scalar_add (int *,int *,int *) ;

void test_ec_combine(void) {
    secp256k1_scalar sum = SECP256K1_SCALAR_CONST(0, 0, 0, 0, 0, 0, 0, 0);
    secp256k1_pubkey data[6];
    const secp256k1_pubkey* d[6];
    secp256k1_pubkey sd;
    secp256k1_pubkey sd2;
    secp256k1_gej Qj;
    secp256k1_ge Q;
    int i;
    for (i = 1; i <= 6; i++) {
        secp256k1_scalar s;
        random_scalar_order_test(&s);
        secp256k1_scalar_add(&sum, &sum, &s);
        secp256k1_ecmult_gen(&ctx->ecmult_gen_ctx, &Qj, &s);
        secp256k1_ge_set_gej(&Q, &Qj);
        secp256k1_pubkey_save(&data[i - 1], &Q);
        d[i - 1] = &data[i - 1];
        secp256k1_ecmult_gen(&ctx->ecmult_gen_ctx, &Qj, &sum);
        secp256k1_ge_set_gej(&Q, &Qj);
        secp256k1_pubkey_save(&sd, &Q);
        CHECK(secp256k1_ec_pubkey_combine(ctx, &sd2, d, i) == 1);
        CHECK(memcmp(&sd, &sd2, sizeof(sd)) == 0);
    }
}
