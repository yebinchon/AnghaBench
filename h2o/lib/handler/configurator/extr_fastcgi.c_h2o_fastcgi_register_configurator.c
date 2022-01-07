
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int exit; int enter; } ;
struct fastcgi_configurator_t {TYPE_2__ super; TYPE_1__* vars; TYPE_1__* _vars_stack; } ;
typedef int h2o_globalconf_t ;
struct TYPE_3__ {scalar_t__ keepalive_timeout; int io_timeout; } ;


 int H2O_CONFIGURATOR_FLAG_ALL_LEVELS ;
 int H2O_CONFIGURATOR_FLAG_DEFERRED ;
 int H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR ;
 int H2O_CONFIGURATOR_FLAG_EXTENSION ;
 int H2O_CONFIGURATOR_FLAG_PATH ;
 int H2O_DEFAULT_FASTCGI_IO_TIMEOUT ;
 scalar_t__ h2o_configurator_create (int *,int) ;
 int h2o_configurator_define_command (TYPE_2__*,char*,int,int ) ;
 int on_config_connect ;
 int on_config_document_root ;
 int on_config_enter ;
 int on_config_exit ;
 int on_config_send_delegated_uri ;
 int on_config_spawn ;
 int on_config_timeout_io ;
 int on_config_timeout_keepalive ;

void h2o_fastcgi_register_configurator(h2o_globalconf_t *conf)
{
    struct fastcgi_configurator_t *c = (void *)h2o_configurator_create(conf, sizeof(*c));


    c->vars = c->_vars_stack;
    c->vars->io_timeout = H2O_DEFAULT_FASTCGI_IO_TIMEOUT;
    c->vars->keepalive_timeout = 0;


    c->super.enter = on_config_enter;
    c->super.exit = on_config_exit;

    h2o_configurator_define_command(&c->super, "fastcgi.connect",
                                    H2O_CONFIGURATOR_FLAG_PATH | H2O_CONFIGURATOR_FLAG_EXTENSION | H2O_CONFIGURATOR_FLAG_DEFERRED,
                                    on_config_connect);
    h2o_configurator_define_command(&c->super, "fastcgi.spawn",
                                    H2O_CONFIGURATOR_FLAG_PATH | H2O_CONFIGURATOR_FLAG_EXTENSION | H2O_CONFIGURATOR_FLAG_DEFERRED,
                                    on_config_spawn);
    h2o_configurator_define_command(&c->super, "fastcgi.timeout.io",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, on_config_timeout_io);
    h2o_configurator_define_command(&c->super, "fastcgi.timeout.keepalive",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_timeout_keepalive);
    h2o_configurator_define_command(&c->super, "fastcgi.document_root",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_document_root);
    h2o_configurator_define_command(&c->super, "fastcgi.send-delegated-uri",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_send_delegated_uri);
}
