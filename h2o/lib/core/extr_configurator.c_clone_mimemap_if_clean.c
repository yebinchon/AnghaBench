
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* mimemap; TYPE_1__* parent; } ;
typedef TYPE_2__ h2o_configurator_context_t ;
struct TYPE_4__ {scalar_t__* mimemap; } ;


 int h2o_mem_release_shared (scalar_t__) ;
 scalar_t__ h2o_mimemap_clone (scalar_t__) ;

__attribute__((used)) static void clone_mimemap_if_clean(h2o_configurator_context_t *ctx)
{
    if (ctx->parent == ((void*)0))
        return;
    if (*ctx->mimemap != *ctx->parent->mimemap)
        return;
    h2o_mem_release_shared(*ctx->mimemap);

    *ctx->mimemap = h2o_mimemap_clone(*ctx->mimemap);
}
