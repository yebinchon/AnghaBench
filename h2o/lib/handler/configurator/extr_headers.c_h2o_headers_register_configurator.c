
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exit; int enter; } ;
struct headers_configurator_t {int _cmd_stack; int cmds; TYPE_1__ super; } ;
typedef int h2o_globalconf_t ;


 int get_headers_commands ;
 scalar_t__ h2o_configurator_create (int *,int) ;
 int h2o_configurator_define_headers_commands (int *,TYPE_1__*,char*,int ) ;
 int on_config_enter ;
 int on_config_exit ;

void h2o_headers_register_configurator(h2o_globalconf_t *conf)
{
    struct headers_configurator_t *c = (void *)h2o_configurator_create(conf, sizeof(*c));

    c->super.enter = on_config_enter;
    c->super.exit = on_config_exit;

    h2o_configurator_define_headers_commands(conf, &c->super, "header", get_headers_commands);
    c->cmds = c->_cmd_stack;
}
