
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int error_callback; } ;
typedef TYPE_1__ secp256k1_context ;


 int VERIFY_CHECK (int ) ;
 scalar_t__ checked_malloc (int *,size_t) ;
 TYPE_1__* secp256k1_context_preallocated_clone (TYPE_1__ const*,TYPE_1__*) ;
 size_t secp256k1_context_preallocated_clone_size (TYPE_1__ const*) ;

secp256k1_context* secp256k1_context_clone(const secp256k1_context* ctx) {
    secp256k1_context* ret;
    size_t prealloc_size;

    VERIFY_CHECK(ctx != ((void*)0));
    prealloc_size = secp256k1_context_preallocated_clone_size(ctx);
    ret = (secp256k1_context*)checked_malloc(&ctx->error_callback, prealloc_size);
    ret = secp256k1_context_preallocated_clone(ctx, ret);
    return ret;
}
