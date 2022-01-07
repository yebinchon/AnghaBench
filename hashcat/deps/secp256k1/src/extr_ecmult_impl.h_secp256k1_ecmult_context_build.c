
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int secp256k1_gej ;
typedef int secp256k1_ge_storage ;
struct TYPE_3__ {int ** pre_g_128; int ** pre_g; } ;
typedef TYPE_1__ secp256k1_ecmult_context ;


 int ECMULT_TABLE_SIZE (int ) ;
 size_t SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE ;
 int VERIFY_CHECK (int) ;
 int WINDOW_G ;
 scalar_t__ manual_alloc (void**,int,void* const,size_t const) ;
 int secp256k1_ecmult_odd_multiples_table_storage_var (int,int *,int *) ;
 int secp256k1_ge_const_g ;
 int secp256k1_gej_double_var (int *,int *,int *) ;
 int secp256k1_gej_set_ge (int *,int *) ;

__attribute__((used)) static void secp256k1_ecmult_context_build(secp256k1_ecmult_context *ctx, void **prealloc) {
    secp256k1_gej gj;
    void* const base = *prealloc;
    size_t const prealloc_size = SECP256K1_ECMULT_CONTEXT_PREALLOCATED_SIZE;

    if (ctx->pre_g != ((void*)0)) {
        return;
    }


    secp256k1_gej_set_ge(&gj, &secp256k1_ge_const_g);

    {
        size_t size = sizeof((*ctx->pre_g)[0]) * ((size_t)ECMULT_TABLE_SIZE(WINDOW_G));

        VERIFY_CHECK(size / sizeof((*ctx->pre_g)[0]) == ((size_t)ECMULT_TABLE_SIZE(WINDOW_G)));
        ctx->pre_g = (secp256k1_ge_storage (*)[])manual_alloc(prealloc, sizeof((*ctx->pre_g)[0]) * ECMULT_TABLE_SIZE(WINDOW_G), base, prealloc_size);
    }


    secp256k1_ecmult_odd_multiples_table_storage_var(ECMULT_TABLE_SIZE(WINDOW_G), *ctx->pre_g, &gj);
}
