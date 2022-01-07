
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_globalconf_t ;
typedef int h2o_configurator_t ;


 int H2O_CONFIGURATOR_FLAG_DEFERRED ;
 int H2O_CONFIGURATOR_FLAG_PATH ;
 int * h2o_configurator_create (int *,int) ;
 int h2o_configurator_define_command (int *,char*,int,int ) ;
 int on_config ;

void h2o_redirect_register_configurator(h2o_globalconf_t *conf)
{
    h2o_configurator_t *c = h2o_configurator_create(conf, sizeof(*c));

    h2o_configurator_define_command(c, "redirect", H2O_CONFIGURATOR_FLAG_PATH | H2O_CONFIGURATOR_FLAG_DEFERRED, on_config);
}
