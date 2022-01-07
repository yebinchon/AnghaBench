
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int secp256k1_scratch ;
typedef int secp256k1_scalar ;
typedef int secp256k1_gej ;
typedef int secp256k1_ge ;
typedef int (* secp256k1_ecmult_multi_func ) (int *,int *,int *,int *,int *,int ,TYPE_1__*,int) ;
struct TYPE_5__ {int * pt; int * sc; } ;
typedef TYPE_1__ ecmult_multi_data ;
struct TYPE_6__ {int error_callback; int ecmult_ctx; } ;


 int CHECK (int) ;
 TYPE_4__* ctx ;
 int ecmult_multi_callback ;
 int secp256k1_scalar_set_int (int *,int ) ;
 int * secp256k1_scratch_create (int *,int ) ;
 int secp256k1_scratch_destroy (int *,int *) ;

void test_ecmult_multi_batch_single(secp256k1_ecmult_multi_func ecmult_multi) {
    secp256k1_scalar szero;
    secp256k1_scalar sc[32];
    secp256k1_ge pt[32];
    secp256k1_gej r;
    ecmult_multi_data data;
    secp256k1_scratch *scratch_empty;

    data.sc = sc;
    data.pt = pt;
    secp256k1_scalar_set_int(&szero, 0);


    scratch_empty = secp256k1_scratch_create(&ctx->error_callback, 0);
    CHECK(!ecmult_multi(&ctx->error_callback, &ctx->ecmult_ctx, scratch_empty, &r, &szero, ecmult_multi_callback, &data, 1));
    secp256k1_scratch_destroy(&ctx->error_callback, scratch_empty);
}
