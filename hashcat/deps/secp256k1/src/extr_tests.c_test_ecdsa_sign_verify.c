
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
struct TYPE_2__ {int ecmult_ctx; int ecmult_gen_ctx; } ;


 int CHECK (int) ;
 TYPE_1__* ctx ;
 int random_scalar_order_test (int *) ;
 int random_sign (int *,int *,int *,int *,int*) ;
 int secp256k1_ecdsa_sig_verify (int *,int *,int *,int *,int *) ;
 int secp256k1_ecmult_gen (int *,int *,int *) ;
 int secp256k1_ge_set_gej (int *,int *) ;
 int secp256k1_rand_bits (int) ;
 int secp256k1_scalar_add (int *,int *,int *) ;
 int secp256k1_scalar_set_int (int *,int) ;

void test_ecdsa_sign_verify(void) {
    secp256k1_gej pubj;
    secp256k1_ge pub;
    secp256k1_scalar one;
    secp256k1_scalar msg, key;
    secp256k1_scalar sigr, sigs;
    int recid;
    int getrec;
    random_scalar_order_test(&msg);
    random_scalar_order_test(&key);
    secp256k1_ecmult_gen(&ctx->ecmult_gen_ctx, &pubj, &key);
    secp256k1_ge_set_gej(&pub, &pubj);
    getrec = secp256k1_rand_bits(1);
    random_sign(&sigr, &sigs, &key, &msg, getrec?&recid:((void*)0));
    if (getrec) {
        CHECK(recid >= 0 && recid < 4);
    }
    CHECK(secp256k1_ecdsa_sig_verify(&ctx->ecmult_ctx, &sigr, &sigs, &pub, &msg));
    secp256k1_scalar_set_int(&one, 1);
    secp256k1_scalar_add(&msg, &msg, &one);
    CHECK(!secp256k1_ecdsa_sig_verify(&ctx->ecmult_ctx, &sigr, &sigs, &pub, &msg));
}
