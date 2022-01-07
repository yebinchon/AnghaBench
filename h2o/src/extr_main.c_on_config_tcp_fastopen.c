
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int yoml_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_2__ {scalar_t__ tfo_queues; } ;


 TYPE_1__ conf ;
 int h2o_configurator_errprintf (int *,int *,char*) ;
 scalar_t__ h2o_configurator_scanf (int *,int *,char*,scalar_t__*) ;

__attribute__((used)) static int on_config_tcp_fastopen(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    if (h2o_configurator_scanf(cmd, node, "%d", &conf.tfo_queues) != 0)
        return -1;

    if (conf.tfo_queues != 0) {
        h2o_configurator_errprintf(cmd, node, "[warning] ignoring the value; the platform does not support TCP_FASTOPEN");
        conf.tfo_queues = 0;
    }

    return 0;
}
