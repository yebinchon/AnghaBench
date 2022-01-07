
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int shutdown_requested; TYPE_5__* globalconf; } ;
typedef TYPE_6__ h2o_context_t ;
struct TYPE_13__ {int (* request_shutdown ) (TYPE_6__*) ;} ;
struct TYPE_12__ {TYPE_4__ callbacks; } ;
struct TYPE_10__ {int (* request_shutdown ) (TYPE_6__*) ;} ;
struct TYPE_11__ {TYPE_1__ callbacks; } ;
struct TYPE_14__ {TYPE_3__ http2; TYPE_2__ http1; } ;


 int stub1 (TYPE_6__*) ;
 int stub2 (TYPE_6__*) ;

void h2o_context_request_shutdown(h2o_context_t *ctx)
{
    ctx->shutdown_requested = 1;
    if (ctx->globalconf->http1.callbacks.request_shutdown != ((void*)0))
        ctx->globalconf->http1.callbacks.request_shutdown(ctx);
    if (ctx->globalconf->http2.callbacks.request_shutdown != ((void*)0))
        ctx->globalconf->http2.callbacks.request_shutdown(ctx);
}
