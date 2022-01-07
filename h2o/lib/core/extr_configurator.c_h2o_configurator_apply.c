
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int yoml_t ;
struct TYPE_7__ {int ** hosts; int mimemap; } ;
typedef TYPE_1__ h2o_globalconf_t ;
struct TYPE_8__ {int dry_run; TYPE_1__* globalconf; int * mimemap; } ;
typedef TYPE_2__ h2o_configurator_context_t ;


 int H2O_CONFIGURATOR_FLAG_GLOBAL ;
 TYPE_2__* create_context (int *,int ) ;
 int destroy_context (TYPE_2__*) ;
 int h2o_configurator_apply_commands (TYPE_2__*,int *,int ,int *) ;
 int h2o_configurator_errprintf (int *,int *,char*) ;

int h2o_configurator_apply(h2o_globalconf_t *config, yoml_t *node, int dry_run)
{
    h2o_configurator_context_t *ctx = create_context(((void*)0), 0);
    ctx->globalconf = config;
    ctx->mimemap = &ctx->globalconf->mimemap;
    ctx->dry_run = dry_run;
    int cmd_ret = h2o_configurator_apply_commands(ctx, node, H2O_CONFIGURATOR_FLAG_GLOBAL, ((void*)0));
    destroy_context(ctx);

    if (cmd_ret != 0)
        return cmd_ret;
    if (config->hosts[0] == ((void*)0)) {
        h2o_configurator_errprintf(((void*)0), node, "mandatory configuration directive `hosts` is missing");
        return -1;
    }
    return 0;
}
