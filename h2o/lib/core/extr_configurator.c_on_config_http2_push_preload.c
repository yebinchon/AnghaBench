
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int yoml_t ;
struct st_core_configurator_t {TYPE_2__* vars; } ;
typedef int ssize_t ;
typedef int h2o_configurator_context_t ;
struct TYPE_8__ {scalar_t__ configurator; } ;
typedef TYPE_3__ h2o_configurator_command_t ;
struct TYPE_6__ {int push_preload; } ;
struct TYPE_7__ {TYPE_1__ http2; } ;


 int h2o_configurator_get_one_of (TYPE_3__*,int *,char*) ;

__attribute__((used)) static int on_config_http2_push_preload(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_core_configurator_t *self = (void *)cmd->configurator;
    ssize_t on;

    if ((on = h2o_configurator_get_one_of(cmd, node, "OFF,ON")) == -1)
        return -1;
    self->vars->http2.push_preload = (int)on;

    return 0;
}
