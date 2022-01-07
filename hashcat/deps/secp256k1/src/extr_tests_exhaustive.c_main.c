
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
struct TYPE_20__ {scalar_t__ infinity; int y; int x; } ;
typedef TYPE_1__ secp256k1_ge ;
typedef int secp256k1_fe ;
struct TYPE_21__ {int ecmult_gen_ctx; } ;
typedef TYPE_2__ secp256k1_context ;


 int CHECK (int) ;
 int EXHAUSTIVE_TEST_ORDER ;
 int SECP256K1_CONTEXT_SIGN ;
 int SECP256K1_CONTEXT_VERIFY ;
 int random_fe (int *) ;
 TYPE_2__* secp256k1_context_create (int) ;
 int secp256k1_context_destroy (TYPE_2__*) ;
 int secp256k1_ecmult_gen (int *,int *,int *) ;
 int secp256k1_fe_equal_var (int *,int *) ;
 int secp256k1_ge_const_g ;
 int secp256k1_ge_set_gej (TYPE_1__*,int *) ;
 int secp256k1_gej_add_ge (int *,int *,int *) ;
 int secp256k1_gej_rescale (int *,int *) ;
 int secp256k1_gej_set_infinity (int *) ;
 int secp256k1_scalar_set_int (int *,int) ;
 int test_exhaustive_addition (TYPE_1__*,int *,int) ;
 int test_exhaustive_ecmult (TYPE_2__*,TYPE_1__*,int *,int) ;
 int test_exhaustive_ecmult_multi (TYPE_2__*,TYPE_1__*,int) ;
 int test_exhaustive_endomorphism (TYPE_1__*,int) ;
 int test_exhaustive_recovery_sign (TYPE_2__*,TYPE_1__*,int) ;
 int test_exhaustive_recovery_verify (TYPE_2__*,TYPE_1__*,int) ;
 int test_exhaustive_sign (TYPE_2__*,TYPE_1__*,int) ;
 int test_exhaustive_verify (TYPE_2__*,TYPE_1__*,int) ;

int main(void) {
    int i;
    secp256k1_gej groupj[EXHAUSTIVE_TEST_ORDER];
    secp256k1_ge group[EXHAUSTIVE_TEST_ORDER];


    secp256k1_context *ctx = secp256k1_context_create(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);




    secp256k1_gej_set_infinity(&groupj[0]);
    secp256k1_ge_set_gej(&group[0], &groupj[0]);
    for (i = 1; i < EXHAUSTIVE_TEST_ORDER; i++) {

        secp256k1_fe z;
        random_fe(&z);

        secp256k1_gej_add_ge(&groupj[i], &groupj[i - 1], &secp256k1_ge_const_g);
        secp256k1_ge_set_gej(&group[i], &groupj[i]);
        secp256k1_gej_rescale(&groupj[i], &z);


        {
            secp256k1_scalar scalar_i;
            secp256k1_gej generatedj;
            secp256k1_ge generated;

            secp256k1_scalar_set_int(&scalar_i, i);
            secp256k1_ecmult_gen(&ctx->ecmult_gen_ctx, &generatedj, &scalar_i);
            secp256k1_ge_set_gej(&generated, &generatedj);

            CHECK(group[i].infinity == 0);
            CHECK(generated.infinity == 0);
            CHECK(secp256k1_fe_equal_var(&generated.x, &group[i].x));
            CHECK(secp256k1_fe_equal_var(&generated.y, &group[i].y));
        }
    }





    test_exhaustive_addition(group, groupj, EXHAUSTIVE_TEST_ORDER);
    test_exhaustive_ecmult(ctx, group, groupj, EXHAUSTIVE_TEST_ORDER);
    test_exhaustive_ecmult_multi(ctx, group, EXHAUSTIVE_TEST_ORDER);
    test_exhaustive_sign(ctx, group, EXHAUSTIVE_TEST_ORDER);
    test_exhaustive_verify(ctx, group, EXHAUSTIVE_TEST_ORDER);






    secp256k1_context_destroy(ctx);
    return 0;
}
