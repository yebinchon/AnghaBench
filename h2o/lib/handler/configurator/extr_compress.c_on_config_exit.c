
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int yoml_t ;
struct compress_configurator_t {TYPE_5__* vars; } ;
typedef int h2o_configurator_t ;
struct TYPE_8__ {int * pathconf; } ;
typedef TYPE_3__ h2o_configurator_context_t ;
struct TYPE_7__ {int quality; } ;
struct TYPE_6__ {int quality; } ;
struct TYPE_9__ {TYPE_2__ brotli; TYPE_1__ gzip; } ;


 int h2o_compress_register (int *,TYPE_5__*) ;

__attribute__((used)) static int on_config_exit(h2o_configurator_t *configurator, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct compress_configurator_t *self = (void *)configurator;

    if (ctx->pathconf != ((void*)0) && (self->vars->gzip.quality != -1 || self->vars->brotli.quality != -1))
        h2o_compress_register(ctx->pathconf, self->vars);

    --self->vars;
    return 0;
}
