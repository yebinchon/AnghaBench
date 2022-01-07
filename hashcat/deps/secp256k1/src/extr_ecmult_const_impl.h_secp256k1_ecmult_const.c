
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int const secp256k1_scalar ;
struct TYPE_26__ {int z; } ;
typedef TYPE_1__ secp256k1_gej ;
typedef int secp256k1_ge_storage ;
struct TYPE_27__ {int y; } ;
typedef TYPE_2__ const secp256k1_ge ;
typedef int secp256k1_fe ;


 int ECMULT_CONST_TABLE_GET_GE (TYPE_2__ const*,TYPE_2__ const*,int,int) ;
 int ECMULT_TABLE_SIZE (int) ;
 int VERIFY_CHECK (int) ;
 int WINDOW_A ;
 int WNAF_SIZE (int) ;
 int WNAF_SIZE_BITS (int,int) ;
 int secp256k1_ecmult_odd_multiples_table_globalz_windowa (TYPE_2__ const*,int *,TYPE_1__*) ;
 int secp256k1_fe_mul (int *,int *,int *) ;
 int secp256k1_fe_normalize_weak (int *) ;
 int secp256k1_ge_from_storage (TYPE_2__ const*,int *) ;
 int secp256k1_ge_mul_lambda (TYPE_2__ const*,TYPE_2__ const*) ;
 int secp256k1_ge_neg (TYPE_2__ const*,TYPE_2__ const*) ;
 int secp256k1_ge_set_gej (TYPE_2__ const*,TYPE_1__*) ;
 int secp256k1_ge_storage_cmov (int *,int *,int) ;
 int secp256k1_ge_to_storage (int *,TYPE_2__ const*) ;
 int secp256k1_gej_add_ge (TYPE_1__*,TYPE_1__*,TYPE_2__ const*) ;
 int secp256k1_gej_double_nonzero (TYPE_1__*,TYPE_1__*,int *) ;
 int secp256k1_gej_double_var (TYPE_1__*,TYPE_1__*,int *) ;
 int secp256k1_gej_set_ge (TYPE_1__*,TYPE_2__ const*) ;
 int secp256k1_scalar_split_lambda (int const*,int const*,int const*) ;
 int secp256k1_wnaf_const (int*,int const*,int,int) ;

__attribute__((used)) static void secp256k1_ecmult_const(secp256k1_gej *r, const secp256k1_ge *a, const secp256k1_scalar *scalar, int size) {
    secp256k1_ge pre_a[ECMULT_TABLE_SIZE(WINDOW_A)];
    secp256k1_ge tmpa;
    secp256k1_fe Z;

    int skew_1;






    int wnaf_1[1 + WNAF_SIZE(WINDOW_A - 1)];

    int i;


    int rsize = size;
    {
        skew_1 = secp256k1_wnaf_const(wnaf_1, scalar, WINDOW_A - 1, size);



    }







    secp256k1_gej_set_ge(r, a);
    secp256k1_ecmult_odd_multiples_table_globalz_windowa(pre_a, &Z, r);
    for (i = 0; i < ECMULT_TABLE_SIZE(WINDOW_A); i++) {
        secp256k1_fe_normalize_weak(&pre_a[i].y);
    }
    i = wnaf_1[WNAF_SIZE_BITS(rsize, WINDOW_A - 1)];
    VERIFY_CHECK(i != 0);
    ECMULT_CONST_TABLE_GET_GE(&tmpa, pre_a, i, WINDOW_A);
    secp256k1_gej_set_ge(r, &tmpa);
    for (i = WNAF_SIZE_BITS(rsize, WINDOW_A - 1) - 1; i >= 0; i--) {
        int n;
        int j;
        for (j = 0; j < WINDOW_A - 1; ++j) {
            secp256k1_gej_double_nonzero(r, r, ((void*)0));
        }

        n = wnaf_1[i];
        ECMULT_CONST_TABLE_GET_GE(&tmpa, pre_a, n, WINDOW_A);
        VERIFY_CHECK(n != 0);
        secp256k1_gej_add_ge(r, r, &tmpa);
    }

    secp256k1_fe_mul(&r->z, &r->z, &Z);

    {

        secp256k1_ge correction = *a;
        secp256k1_ge_storage correction_1_stor;



        secp256k1_ge_storage a2_stor;
        secp256k1_gej tmpj;
        secp256k1_gej_set_ge(&tmpj, &correction);
        secp256k1_gej_double_var(&tmpj, &tmpj, ((void*)0));
        secp256k1_ge_set_gej(&correction, &tmpj);
        secp256k1_ge_to_storage(&correction_1_stor, a);





        secp256k1_ge_to_storage(&a2_stor, &correction);


        secp256k1_ge_storage_cmov(&correction_1_stor, &a2_stor, skew_1 == 2);







        secp256k1_ge_from_storage(&correction, &correction_1_stor);
        secp256k1_ge_neg(&correction, &correction);
        secp256k1_gej_add_ge(r, r, &correction);
    }
}
