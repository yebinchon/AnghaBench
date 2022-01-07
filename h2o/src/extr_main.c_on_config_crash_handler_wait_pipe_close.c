
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int yoml_t ;
typedef int ssize_t ;
typedef int h2o_configurator_context_t ;
typedef int h2o_configurator_command_t ;
struct TYPE_2__ {int crash_handler_wait_pipe_close; } ;


 TYPE_1__ conf ;
 int h2o_configurator_get_one_of (int *,int *,char*) ;

__attribute__((used)) static int on_config_crash_handler_wait_pipe_close(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    ssize_t v;

    if ((v = h2o_configurator_get_one_of(cmd, node, "OFF,ON")) == -1)
        return -1;

    conf.crash_handler_wait_pipe_close = (int)v;
    return 0;
}
