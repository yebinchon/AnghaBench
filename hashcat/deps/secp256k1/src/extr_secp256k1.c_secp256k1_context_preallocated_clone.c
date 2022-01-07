
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ecmult_ctx; int ecmult_gen_ctx; } ;
typedef TYPE_1__ secp256k1_context ;


 int ARG_CHECK (int ) ;
 int VERIFY_CHECK (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,size_t) ;
 size_t secp256k1_context_preallocated_clone_size (TYPE_1__ const*) ;
 int secp256k1_ecmult_context_finalize_memcpy (int *,int *) ;
 int secp256k1_ecmult_gen_context_finalize_memcpy (int *,int *) ;

secp256k1_context* secp256k1_context_preallocated_clone(const secp256k1_context* ctx, void* prealloc) {
    size_t prealloc_size;
    secp256k1_context* ret;
    VERIFY_CHECK(ctx != ((void*)0));
    ARG_CHECK(prealloc != ((void*)0));

    prealloc_size = secp256k1_context_preallocated_clone_size(ctx);
    ret = (secp256k1_context*)prealloc;
    memcpy(ret, ctx, prealloc_size);
    secp256k1_ecmult_gen_context_finalize_memcpy(&ret->ecmult_gen_ctx, &ctx->ecmult_gen_ctx);
    secp256k1_ecmult_context_finalize_memcpy(&ret->ecmult_ctx, &ctx->ecmult_ctx);
    return ret;
}
