
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int yoml_t ;
struct TYPE_9__ {int mimemap; } ;
typedef TYPE_1__ h2o_pathconf_t ;
struct TYPE_10__ {int * mimemap; TYPE_1__* pathconf; } ;
typedef TYPE_2__ h2o_configurator_context_t ;


 int H2O_CONFIGURATOR_FLAG_PATH ;
 TYPE_2__* create_context (TYPE_2__*,int ) ;
 int destroy_context (TYPE_2__*) ;
 int h2o_configurator_apply_commands (TYPE_2__*,int *,int ,int *) ;

__attribute__((used)) static int config_path(h2o_configurator_context_t *parent_ctx, h2o_pathconf_t *pathconf, yoml_t *node)
{
    h2o_configurator_context_t *path_ctx = create_context(parent_ctx, 0);
    path_ctx->pathconf = pathconf;
    path_ctx->mimemap = &pathconf->mimemap;

    int ret = h2o_configurator_apply_commands(path_ctx, node, H2O_CONFIGURATOR_FLAG_PATH, ((void*)0));

    destroy_context(path_ctx);
    return ret;
}
