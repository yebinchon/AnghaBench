
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int yoml_t ;
struct st_status_configurator {int duration_stats; } ;
typedef scalar_t__ ssize_t ;
typedef int h2o_configurator_context_t ;
struct TYPE_4__ {scalar_t__ configurator; } ;
typedef TYPE_1__ h2o_configurator_command_t ;


 scalar_t__ h2o_configurator_get_one_of (TYPE_1__*,int *,char*) ;

__attribute__((used)) static int on_config_duration_stats(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    struct st_status_configurator *c = (void *)cmd->configurator;
    ssize_t ret;
    switch (ret = h2o_configurator_get_one_of(cmd, node, "OFF,ON")) {
    case 0:
    case 1:
        c->duration_stats = (int)ret;
        return 0;
    default:
        return -1;
    }
}
