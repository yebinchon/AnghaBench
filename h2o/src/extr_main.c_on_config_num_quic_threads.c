
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int yoml_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_3__ {int num_threads; } ;
struct TYPE_4__ {TYPE_1__ quic; } ;


 TYPE_2__ conf ;
 scalar_t__ h2o_configurator_scanf (int *,int *,char*,int *) ;

__attribute__((used)) static int on_config_num_quic_threads(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    if (h2o_configurator_scanf(cmd, node, "%zu", &conf.quic.num_threads) != 0)
        return -1;
    return 0;
}
