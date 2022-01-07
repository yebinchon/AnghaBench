
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* final ) (TYPE_1__*,void*,int ) ;int (* update ) (TYPE_1__*,void const*,size_t) ;} ;
typedef TYPE_1__ ptls_hash_context_t ;
struct TYPE_8__ {TYPE_1__* (* create ) () ;} ;
typedef TYPE_2__ ptls_hash_algorithm_t ;


 int PTLS_ERROR_NO_MEMORY ;
 int PTLS_HASH_FINAL_MODE_FREE ;
 TYPE_1__* stub1 () ;
 int stub2 (TYPE_1__*,void const*,size_t) ;
 int stub3 (TYPE_1__*,void*,int ) ;

int ptls_calc_hash(ptls_hash_algorithm_t *algo, void *output, const void *src, size_t len)
{
    ptls_hash_context_t *ctx;

    if ((ctx = algo->create()) == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;
    ctx->update(ctx, src, len);
    ctx->final(ctx, output, PTLS_HASH_FINAL_MODE_FREE);
    return 0;
}
