
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yoml_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;


 int h2o_configurator_errprintf (int *,int *,char*) ;

__attribute__((used)) static int on_config_mruby_handler_path(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    h2o_configurator_errprintf(cmd, node, "the command has been removed; see https://github.com/h2o/h2o/pull/467");
    return -1;
}
