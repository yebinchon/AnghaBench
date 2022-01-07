
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
typedef int secp256k1_fe ;


 int ECMULT_TABLE_SIZE (int ) ;
 int WINDOW_A ;
 int secp256k1_ecmult_odd_multiples_table (int,int *,int *,int const*) ;
 int secp256k1_ge_globalz_set_table_gej (int,int *,int *,int *,int *) ;

__attribute__((used)) static void secp256k1_ecmult_odd_multiples_table_globalz_windowa(secp256k1_ge *pre, secp256k1_fe *globalz, const secp256k1_gej *a) {
    secp256k1_gej prej[ECMULT_TABLE_SIZE(WINDOW_A)];
    secp256k1_fe zr[ECMULT_TABLE_SIZE(WINDOW_A)];


    secp256k1_ecmult_odd_multiples_table(ECMULT_TABLE_SIZE(WINDOW_A), prej, zr, a);

    secp256k1_ge_globalz_set_table_gej(ECMULT_TABLE_SIZE(WINDOW_A), pre, globalz, prej, zr);
}
