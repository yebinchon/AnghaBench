
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int yoml_t ;
struct proxy_configurator_t {TYPE_3__* vars; } ;
typedef int ssize_t ;
typedef int h2o_configurator_context_t ;
struct TYPE_10__ {scalar_t__ configurator; } ;
typedef TYPE_4__ h2o_configurator_command_t ;
struct TYPE_7__ {int enabled; } ;
struct TYPE_8__ {TYPE_1__ websocket; } ;
struct TYPE_9__ {TYPE_2__ conf; } ;


 int h2o_configurator_get_one_of (TYPE_4__*,int *,char*) ;

__attribute__((used)) static int on_config_websocket(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct proxy_configurator_t *self = (void *)cmd->configurator;
    ssize_t ret = h2o_configurator_get_one_of(cmd, node, "OFF,ON");
    if (ret == -1)
        return -1;
    self->vars->conf.websocket.enabled = (int)ret;
    return 0;
}
