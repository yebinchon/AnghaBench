
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_configurator_t {int dummy; } ;
typedef int h2o_globalconf_t ;


 int H2O_CONFIGURATOR_FLAG_DEFERRED ;
 int H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR ;
 int H2O_CONFIGURATOR_FLAG_HOST ;
 scalar_t__ h2o_configurator_create (int *,int) ;
 int h2o_configurator_define_command (struct st_h2o_configurator_t*,char*,int,int ) ;
 int on_config_debug_state ;

void h2o_http2_debug_state_register_configurator(h2o_globalconf_t *conf)
{
    struct st_h2o_configurator_t *c = (void *)h2o_configurator_create(conf, sizeof(*c));

    h2o_configurator_define_command(
        c, "http2-debug-state", H2O_CONFIGURATOR_FLAG_HOST | H2O_CONFIGURATOR_FLAG_DEFERRED | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
        on_config_debug_state);
}
