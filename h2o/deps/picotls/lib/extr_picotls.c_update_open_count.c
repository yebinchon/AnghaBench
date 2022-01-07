
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {TYPE_3__* update_open_count; } ;
typedef TYPE_1__ ptls_context_t ;
struct TYPE_5__ {int (* cb ) (TYPE_3__*,int ) ;} ;


 int stub1 (TYPE_3__*,int ) ;

__attribute__((used)) static void update_open_count(ptls_context_t *ctx, ssize_t delta)
{
    if (ctx->update_open_count != ((void*)0))
        ctx->update_open_count->cb(ctx->update_open_count, delta);
}
