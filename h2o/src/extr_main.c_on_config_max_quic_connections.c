
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int yoml_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_2__ {int max_quic_connections; } ;


 TYPE_1__ conf ;
 int h2o_configurator_scanf (int *,int *,char*,int *) ;

__attribute__((used)) static int on_config_max_quic_connections(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    return h2o_configurator_scanf(cmd, node, "%d", &conf.max_quic_connections);
}
