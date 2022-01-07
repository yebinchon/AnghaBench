
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exit; int enter; } ;
struct st_status_configurator {TYPE_1__ super; } ;
typedef int h2o_globalconf_t ;


 int H2O_CONFIGURATOR_FLAG_DEFERRED ;
 int H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR ;
 int H2O_CONFIGURATOR_FLAG_GLOBAL ;
 int H2O_CONFIGURATOR_FLAG_PATH ;
 scalar_t__ h2o_configurator_create (int *,int) ;
 int h2o_configurator_define_command (TYPE_1__*,char*,int,int ) ;
 int on_config_duration_stats ;
 int on_config_status ;
 int on_enter_status ;
 int on_exit_status ;

void h2o_status_register_configurator(h2o_globalconf_t *conf)
{
    struct st_status_configurator *c = (void *)h2o_configurator_create(conf, sizeof(*c));
    c->super.enter = on_enter_status;
    c->super.exit = on_exit_status;

    h2o_configurator_define_command(
        &c->super, "status", H2O_CONFIGURATOR_FLAG_PATH | H2O_CONFIGURATOR_FLAG_DEFERRED | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
        on_config_status);

    h2o_configurator_define_command(&c->super, "duration-stats", H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_duration_stats);
}
