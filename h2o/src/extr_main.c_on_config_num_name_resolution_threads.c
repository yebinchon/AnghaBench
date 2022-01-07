
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yoml_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;


 int h2o_configurator_errprintf (int *,int *,char*) ;
 scalar_t__ h2o_configurator_scanf (int *,int *,char*,scalar_t__*) ;
 scalar_t__ h2o_hostinfo_max_threads ;

__attribute__((used)) static int on_config_num_name_resolution_threads(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    if (h2o_configurator_scanf(cmd, node, "%zu", &h2o_hostinfo_max_threads) != 0)
        return -1;
    if (h2o_hostinfo_max_threads == 0) {
        h2o_configurator_errprintf(cmd, node, "num-name-resolution-threads must be >=1");
        return -1;
    }
    return 0;
}
