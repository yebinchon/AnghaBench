
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int yoml_t ;
struct proxy_configurator_t {TYPE_2__* vars; } ;
typedef int h2o_configurator_context_t ;
struct TYPE_8__ {scalar_t__ configurator; } ;
typedef TYPE_3__ h2o_configurator_command_t ;
struct TYPE_6__ {int max_buffer_size; } ;
struct TYPE_7__ {TYPE_1__ conf; } ;


 int h2o_configurator_scanf (TYPE_3__*,int *,char*,int *) ;

__attribute__((used)) static int on_config_max_buffer_size(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct proxy_configurator_t *self = (void *)cmd->configurator;
    return h2o_configurator_scanf(cmd, node, "%zu", &self->vars->conf.max_buffer_size);
}
