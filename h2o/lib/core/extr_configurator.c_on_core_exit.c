
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int yoml_t ;
struct st_core_configurator_t {TYPE_7__* vars; } ;
typedef int h2o_configurator_t ;
struct TYPE_17__ {TYPE_5__* pathconf; TYPE_2__* hostconf; } ;
typedef TYPE_8__ h2o_configurator_context_t ;
struct TYPE_15__ {int emit_request_errors; } ;
struct TYPE_12__ {int casper; int allow_cross_origin_push; int push_preload; int reprioritize_blocking_assets; } ;
struct TYPE_16__ {TYPE_6__ error_log; TYPE_3__ http2; } ;
struct TYPE_13__ {int emit_request_errors; } ;
struct TYPE_14__ {TYPE_4__ error_log; } ;
struct TYPE_10__ {int casper; int allow_cross_origin_push; int push_preload; int reprioritize_blocking_assets; } ;
struct TYPE_11__ {TYPE_1__ http2; } ;



__attribute__((used)) static int on_core_exit(h2o_configurator_t *_self, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_core_configurator_t *self = (void *)_self;

    if (ctx->hostconf != ((void*)0) && ctx->pathconf == ((void*)0)) {

        ctx->hostconf->http2.reprioritize_blocking_assets = self->vars->http2.reprioritize_blocking_assets;
        ctx->hostconf->http2.push_preload = self->vars->http2.push_preload;
        ctx->hostconf->http2.allow_cross_origin_push = self->vars->http2.allow_cross_origin_push;
        ctx->hostconf->http2.casper = self->vars->http2.casper;
    } else if (ctx->pathconf != ((void*)0)) {

        ctx->pathconf->error_log.emit_request_errors = self->vars->error_log.emit_request_errors;
    }

    --self->vars;
    return 0;
}
