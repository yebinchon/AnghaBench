
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge_storage ;
struct TYPE_7__ {scalar_t__ infinity; } ;
typedef TYPE_1__ secp256k1_ge ;
struct TYPE_8__ {int *** prec; int blind; int initial; } ;
typedef TYPE_2__ secp256k1_ecmult_gen_context ;
typedef int adds ;


 int ECMULT_GEN_PREC_B ;
 int ECMULT_GEN_PREC_G ;
 int ECMULT_GEN_PREC_N ;
 int memset (int *,int ,int) ;
 int secp256k1_ge_clear (TYPE_1__*) ;
 int secp256k1_ge_from_storage (TYPE_1__*,int *) ;
 int secp256k1_ge_storage_cmov (int *,int *,int) ;
 int secp256k1_gej_add_ge (int *,int *,TYPE_1__*) ;
 int secp256k1_scalar_add (int *,int const*,int *) ;
 int secp256k1_scalar_clear (int *) ;
 int secp256k1_scalar_get_bits (int *,int,int) ;

__attribute__((used)) static void secp256k1_ecmult_gen(const secp256k1_ecmult_gen_context *ctx, secp256k1_gej *r, const secp256k1_scalar *gn) {
    secp256k1_ge add;
    secp256k1_ge_storage adds;
    secp256k1_scalar gnb;
    int bits;
    int i, j;
    memset(&adds, 0, sizeof(adds));
    *r = ctx->initial;

    secp256k1_scalar_add(&gnb, gn, &ctx->blind);
    add.infinity = 0;
    for (j = 0; j < ECMULT_GEN_PREC_N; j++) {
        bits = secp256k1_scalar_get_bits(&gnb, j * ECMULT_GEN_PREC_B, ECMULT_GEN_PREC_B);
        for (i = 0; i < ECMULT_GEN_PREC_G; i++) {
            secp256k1_ge_storage_cmov(&adds, &(*ctx->prec)[j][i], i == bits);
        }
        secp256k1_ge_from_storage(&add, &adds);
        secp256k1_gej_add_ge(r, r, &add);
    }
    bits = 0;
    secp256k1_ge_clear(&add);
    secp256k1_scalar_clear(&gnb);
}
