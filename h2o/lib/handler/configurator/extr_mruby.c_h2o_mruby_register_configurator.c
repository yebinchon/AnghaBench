
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exit; int enter; } ;
struct mruby_configurator_t {TYPE_1__ super; int _vars_stack; int vars; } ;
typedef int h2o_globalconf_t ;


 int H2O_CONFIGURATOR_FLAG_DEFERRED ;
 int H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR ;
 int H2O_CONFIGURATOR_FLAG_PATH ;
 scalar_t__ h2o_configurator_create (int *,int) ;
 int h2o_configurator_define_command (TYPE_1__*,char*,int,int ) ;
 int on_config_enter ;
 int on_config_exit ;
 int on_config_mruby_handler ;
 int on_config_mruby_handler_file ;
 int on_config_mruby_handler_path ;

void h2o_mruby_register_configurator(h2o_globalconf_t *conf)
{
    struct mruby_configurator_t *c = (void *)h2o_configurator_create(conf, sizeof(*c));

    c->vars = c->_vars_stack;
    c->super.enter = on_config_enter;
    c->super.exit = on_config_exit;

    h2o_configurator_define_command(
        &c->super, "mruby.handler",
        H2O_CONFIGURATOR_FLAG_PATH | H2O_CONFIGURATOR_FLAG_DEFERRED | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, on_config_mruby_handler);
    h2o_configurator_define_command(&c->super, "mruby.handler-file",
                                    H2O_CONFIGURATOR_FLAG_PATH | H2O_CONFIGURATOR_FLAG_DEFERRED |
                                        H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_mruby_handler_file);
    h2o_configurator_define_command(&c->super, "mruby.handler_path", H2O_CONFIGURATOR_FLAG_PATH | H2O_CONFIGURATOR_FLAG_DEFERRED,
                                    on_config_mruby_handler_path);
}
