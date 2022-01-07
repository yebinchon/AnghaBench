
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int exit; int enter; } ;
struct st_core_configurator_t {TYPE_4__ super; TYPE_3__* vars; TYPE_3__* _vars_stack; } ;
typedef int h2o_globalconf_t ;
typedef TYPE_4__ h2o_configurator_t ;
struct TYPE_8__ {int emit_request_errors; } ;
struct TYPE_7__ {int reprioritize_blocking_assets; int push_preload; } ;
struct TYPE_9__ {TYPE_2__ error_log; TYPE_1__ http2; } ;


 int H2O_CONFIGURATOR_FLAG_ALL_LEVELS ;
 int H2O_CONFIGURATOR_FLAG_DEFERRED ;
 int H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING ;
 int H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR ;
 int H2O_CONFIGURATOR_FLAG_EXPECT_SEQUENCE ;
 int H2O_CONFIGURATOR_FLAG_EXTENSION ;
 int H2O_CONFIGURATOR_FLAG_GLOBAL ;
 int H2O_CONFIGURATOR_FLAG_HOST ;
 int H2O_CONFIGURATOR_FLAG_PATH ;
 int H2O_CONFIGURATOR_FLAG_SEMI_DEFERRED ;
 TYPE_4__* h2o_configurator_create (int *,int) ;
 int h2o_configurator_define_command (TYPE_4__*,char*,int,int ) ;
 int * h2o_configurator_get_command (int *,char*) ;
 int on_config_custom_handler ;
 int on_config_error_log_emit_request_errors ;
 int on_config_handshake_timeout ;
 int on_config_hosts ;
 int on_config_http1_request_timeout ;
 int on_config_http1_upgrade_to_http2 ;
 int on_config_http2_allow_cross_origin_push ;
 int on_config_http2_casper ;
 int on_config_http2_graceful_shutdown_timeout ;
 int on_config_http2_idle_timeout ;
 int on_config_http2_input_window_size ;
 int on_config_http2_latency_optimization_max_additional_delay ;
 int on_config_http2_latency_optimization_max_cwnd ;
 int on_config_http2_latency_optimization_min_rtt ;
 int on_config_http2_max_concurrent_requests_per_connection ;
 int on_config_http2_push_preload ;
 int on_config_http2_reprioritize_blocking_assets ;
 int on_config_limit_request_body ;
 int on_config_max_delegations ;
 int on_config_mime_addtypes ;
 int on_config_mime_removetypes ;
 int on_config_mime_setdefaulttype ;
 int on_config_mime_settypes ;
 int on_config_paths ;
 int on_config_send_informational ;
 int on_config_send_server_name ;
 int on_config_server_name ;
 int on_config_setenv ;
 int on_config_stash ;
 int on_config_unsetenv ;
 int on_core_enter ;
 int on_core_exit ;

void h2o_configurator__init_core(h2o_globalconf_t *conf)
{

    if (h2o_configurator_get_command(conf, "files") != ((void*)0))
        return;

    {
        h2o_configurator_t *c = h2o_configurator_create(conf, sizeof(*c));
        h2o_configurator_define_command(
            c, "hosts", H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING | H2O_CONFIGURATOR_FLAG_DEFERRED,
            on_config_hosts);
        h2o_configurator_define_command(
            c, "paths", H2O_CONFIGURATOR_FLAG_HOST | H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING | H2O_CONFIGURATOR_FLAG_DEFERRED,
            on_config_paths);
    };

    {
        struct st_core_configurator_t *c = (void *)h2o_configurator_create(conf, sizeof(*c));
        c->super.enter = on_core_enter;
        c->super.exit = on_core_exit;
        c->vars = c->_vars_stack;
        c->vars->http2.reprioritize_blocking_assets = 1;
        c->vars->http2.push_preload = 1;
        c->vars->error_log.emit_request_errors = 1;
        h2o_configurator_define_command(&c->super, "limit-request-body",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_limit_request_body);
        h2o_configurator_define_command(&c->super, "max-delegations",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_max_delegations);
        h2o_configurator_define_command(&c->super, "handshake-timeout",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_handshake_timeout);
        h2o_configurator_define_command(&c->super, "http1-request-timeout",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http1_request_timeout);
        h2o_configurator_define_command(&c->super, "http1-upgrade-to-http2",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http1_upgrade_to_http2);
        h2o_configurator_define_command(&c->super, "http2-idle-timeout",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_idle_timeout);
        h2o_configurator_define_command(&c->super, "http2-graceful-shutdown-timeout",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_graceful_shutdown_timeout);
        h2o_configurator_define_command(&c->super, "http2-max-concurrent-requests-per-connection",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_max_concurrent_requests_per_connection);
        h2o_configurator_define_command(&c->super, "http2-input-window-size",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_input_window_size);
        h2o_configurator_define_command(&c->super, "http2-latency-optimization-min-rtt",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_latency_optimization_min_rtt);
        h2o_configurator_define_command(&c->super, "http2-latency-optimization-max-additional-delay",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_latency_optimization_max_additional_delay);
        h2o_configurator_define_command(&c->super, "http2-latency-optimization-max-cwnd",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_latency_optimization_max_cwnd);
        h2o_configurator_define_command(&c->super, "http2-reprioritize-blocking-assets",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_HOST |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_reprioritize_blocking_assets);
        h2o_configurator_define_command(&c->super, "http2-push-preload",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_HOST |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_push_preload);
        h2o_configurator_define_command(&c->super, "http2-allow-cross-origin-push",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_PATH |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_allow_cross_origin_push);
        h2o_configurator_define_command(&c->super, "http2-casper", H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_HOST,
                                        on_config_http2_casper);
        h2o_configurator_define_command(&c->super, "file.mime.settypes",
                                        (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING,
                                        on_config_mime_settypes);
        h2o_configurator_define_command(&c->super, "file.mime.addtypes",
                                        (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING,
                                        on_config_mime_addtypes);
        h2o_configurator_define_command(&c->super, "file.mime.removetypes",
                                        (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_SEQUENCE,
                                        on_config_mime_removetypes);
        h2o_configurator_define_command(&c->super, "file.mime.setdefaulttype",
                                        (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_mime_setdefaulttype);
        h2o_configurator_define_command(&c->super, "file.custom-handler",
                                        (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                            H2O_CONFIGURATOR_FLAG_SEMI_DEFERRED,
                                        on_config_custom_handler);
        h2o_configurator_define_command(&c->super, "setenv",
                                        H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING, on_config_setenv);
        h2o_configurator_define_command(&c->super, "unsetenv", H2O_CONFIGURATOR_FLAG_ALL_LEVELS, on_config_unsetenv);
        h2o_configurator_define_command(&c->super, "server-name",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, on_config_server_name);
        h2o_configurator_define_command(&c->super, "send-server-name",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR |
                                            H2O_CONFIGURATOR_FLAG_DEFERRED,
                                        on_config_send_server_name);
        h2o_configurator_define_command(&c->super, "error-log.emit-request-errors",
                                        H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_error_log_emit_request_errors);
        h2o_configurator_define_command(&c->super, "send-informational",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_send_informational);
        h2o_configurator_define_command(&c->super, "stash", H2O_CONFIGURATOR_FLAG_ALL_LEVELS, on_config_stash);
    }
}
