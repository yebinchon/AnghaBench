#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  exit; int /*<<< orphan*/  enter; } ;
struct st_core_configurator_t {TYPE_4__ super; TYPE_3__* vars; TYPE_3__* _vars_stack; } ;
typedef  int /*<<< orphan*/  h2o_globalconf_t ;
typedef  TYPE_4__ h2o_configurator_t ;
struct TYPE_8__ {int emit_request_errors; } ;
struct TYPE_7__ {int reprioritize_blocking_assets; int push_preload; } ;
struct TYPE_9__ {TYPE_2__ error_log; TYPE_1__ http2; } ;

/* Variables and functions */
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
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  on_config_custom_handler ; 
 int /*<<< orphan*/  on_config_error_log_emit_request_errors ; 
 int /*<<< orphan*/  on_config_handshake_timeout ; 
 int /*<<< orphan*/  on_config_hosts ; 
 int /*<<< orphan*/  on_config_http1_request_timeout ; 
 int /*<<< orphan*/  on_config_http1_upgrade_to_http2 ; 
 int /*<<< orphan*/  on_config_http2_allow_cross_origin_push ; 
 int /*<<< orphan*/  on_config_http2_casper ; 
 int /*<<< orphan*/  on_config_http2_graceful_shutdown_timeout ; 
 int /*<<< orphan*/  on_config_http2_idle_timeout ; 
 int /*<<< orphan*/  on_config_http2_input_window_size ; 
 int /*<<< orphan*/  on_config_http2_latency_optimization_max_additional_delay ; 
 int /*<<< orphan*/  on_config_http2_latency_optimization_max_cwnd ; 
 int /*<<< orphan*/  on_config_http2_latency_optimization_min_rtt ; 
 int /*<<< orphan*/  on_config_http2_max_concurrent_requests_per_connection ; 
 int /*<<< orphan*/  on_config_http2_push_preload ; 
 int /*<<< orphan*/  on_config_http2_reprioritize_blocking_assets ; 
 int /*<<< orphan*/  on_config_limit_request_body ; 
 int /*<<< orphan*/  on_config_max_delegations ; 
 int /*<<< orphan*/  on_config_mime_addtypes ; 
 int /*<<< orphan*/  on_config_mime_removetypes ; 
 int /*<<< orphan*/  on_config_mime_setdefaulttype ; 
 int /*<<< orphan*/  on_config_mime_settypes ; 
 int /*<<< orphan*/  on_config_paths ; 
 int /*<<< orphan*/  on_config_send_informational ; 
 int /*<<< orphan*/  on_config_send_server_name ; 
 int /*<<< orphan*/  on_config_server_name ; 
 int /*<<< orphan*/  on_config_setenv ; 
 int /*<<< orphan*/  on_config_stash ; 
 int /*<<< orphan*/  on_config_unsetenv ; 
 int /*<<< orphan*/  on_core_enter ; 
 int /*<<< orphan*/  on_core_exit ; 

void FUNC3(h2o_globalconf_t *conf)
{
    /* check if already initialized */
    if (FUNC2(conf, "files") != NULL)
        return;

    { /* `hosts` and `paths` */
        h2o_configurator_t *c = FUNC0(conf, sizeof(*c));
        FUNC1(
            c, "hosts", H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING | H2O_CONFIGURATOR_FLAG_DEFERRED,
            on_config_hosts);
        FUNC1(
            c, "paths", H2O_CONFIGURATOR_FLAG_HOST | H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING | H2O_CONFIGURATOR_FLAG_DEFERRED,
            on_config_paths);
    };

    { /* setup global configurators */
        struct st_core_configurator_t *c = (void *)FUNC0(conf, sizeof(*c));
        c->super.enter = on_core_enter;
        c->super.exit = on_core_exit;
        c->vars = c->_vars_stack;
        c->vars->http2.reprioritize_blocking_assets = 1; /* defaults to ON */
        c->vars->http2.push_preload = 1;                 /* defaults to ON */
        c->vars->error_log.emit_request_errors = 1;      /* defaults to ON */
        FUNC1(&c->super, "limit-request-body",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_limit_request_body);
        FUNC1(&c->super, "max-delegations",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_max_delegations);
        FUNC1(&c->super, "handshake-timeout",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_handshake_timeout);
        FUNC1(&c->super, "http1-request-timeout",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http1_request_timeout);
        FUNC1(&c->super, "http1-upgrade-to-http2",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http1_upgrade_to_http2);
        FUNC1(&c->super, "http2-idle-timeout",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_idle_timeout);
        FUNC1(&c->super, "http2-graceful-shutdown-timeout",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_graceful_shutdown_timeout);
        FUNC1(&c->super, "http2-max-concurrent-requests-per-connection",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_max_concurrent_requests_per_connection);
        FUNC1(&c->super, "http2-input-window-size",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_input_window_size);
        FUNC1(&c->super, "http2-latency-optimization-min-rtt",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_latency_optimization_min_rtt);
        FUNC1(&c->super, "http2-latency-optimization-max-additional-delay",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_latency_optimization_max_additional_delay);
        FUNC1(&c->super, "http2-latency-optimization-max-cwnd",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_latency_optimization_max_cwnd);
        FUNC1(&c->super, "http2-reprioritize-blocking-assets",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_HOST |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_reprioritize_blocking_assets);
        FUNC1(&c->super, "http2-push-preload",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_HOST |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_push_preload);
        FUNC1(&c->super, "http2-allow-cross-origin-push",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_PATH |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_http2_allow_cross_origin_push);
        FUNC1(&c->super, "http2-casper", H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_HOST,
                                        on_config_http2_casper);
        FUNC1(&c->super, "file.mime.settypes",
                                        (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING,
                                        on_config_mime_settypes);
        FUNC1(&c->super, "file.mime.addtypes",
                                        (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING,
                                        on_config_mime_addtypes);
        FUNC1(&c->super, "file.mime.removetypes",
                                        (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_SEQUENCE,
                                        on_config_mime_removetypes);
        FUNC1(&c->super, "file.mime.setdefaulttype",
                                        (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                            H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_mime_setdefaulttype);
        FUNC1(&c->super, "file.custom-handler",
                                        (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                            H2O_CONFIGURATOR_FLAG_SEMI_DEFERRED,
                                        on_config_custom_handler);
        FUNC1(&c->super, "setenv",
                                        H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING, on_config_setenv);
        FUNC1(&c->super, "unsetenv", H2O_CONFIGURATOR_FLAG_ALL_LEVELS, on_config_unsetenv);
        FUNC1(&c->super, "server-name",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, on_config_server_name);
        FUNC1(&c->super, "send-server-name",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR |
                                            H2O_CONFIGURATOR_FLAG_DEFERRED,
                                        on_config_send_server_name);
        FUNC1(&c->super, "error-log.emit-request-errors",
                                        H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_error_log_emit_request_errors);
        FUNC1(&c->super, "send-informational",
                                        H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                        on_config_send_informational);
        FUNC1(&c->super, "stash", H2O_CONFIGURATOR_FLAG_ALL_LEVELS, on_config_stash);
    }
}