
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int yoml_t ;
struct throttle_resp_configurator_t {TYPE_1__* vars; } ;
typedef int h2o_configurator_context_t ;
struct TYPE_6__ {scalar_t__ configurator; } ;
typedef TYPE_2__ h2o_configurator_command_t ;
struct TYPE_5__ {int on; } ;


 scalar_t__ h2o_configurator_get_one_of (TYPE_2__*,int *,char*) ;

__attribute__((used)) static int on_config_throttle_resp(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct throttle_resp_configurator_t *self = (void *)cmd->configurator;

    if ((self->vars->on = (int)h2o_configurator_get_one_of(cmd, node, "OFF,ON")) == -1)
        return -1;
    return 0;
}
