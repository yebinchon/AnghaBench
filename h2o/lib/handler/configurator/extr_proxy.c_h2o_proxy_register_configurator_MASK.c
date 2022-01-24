#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  exit; int /*<<< orphan*/  enter; } ;
struct proxy_configurator_t {TYPE_9__ super; TYPE_4__* vars; TYPE_4__* _vars_stack; } ;
struct TYPE_16__ {int /*<<< orphan*/  global_socketpool; } ;
struct TYPE_17__ {TYPE_5__ proxy; } ;
typedef  TYPE_6__ h2o_globalconf_t ;
struct TYPE_13__ {int ratio; int /*<<< orphan*/  max_concurrent_strams; } ;
struct TYPE_12__ {int /*<<< orphan*/  timeout; scalar_t__ enabled; } ;
struct TYPE_14__ {int /*<<< orphan*/  keepalive_timeout; TYPE_2__ http2; int /*<<< orphan*/  max_buffer_size; TYPE_1__ websocket; void* first_byte_timeout; void* connect_timeout; void* io_timeout; } ;
struct TYPE_15__ {TYPE_3__ conf; } ;

/* Variables and functions */
 int H2O_CONFIGURATOR_FLAG_ALL_LEVELS ; 
 int H2O_CONFIGURATOR_FLAG_DEFERRED ; 
 int H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING ; 
 int H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR ; 
 int H2O_CONFIGURATOR_FLAG_EXPECT_SEQUENCE ; 
 int H2O_CONFIGURATOR_FLAG_GLOBAL ; 
 int H2O_CONFIGURATOR_FLAG_PATH ; 
 int /*<<< orphan*/  H2O_DEFAULT_PROXY_HTTP2_MAX_CONCURRENT_STREAMS ; 
 void* H2O_DEFAULT_PROXY_IO_TIMEOUT ; 
 int /*<<< orphan*/  H2O_DEFAULT_PROXY_WEBSOCKET_TIMEOUT ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  get_headers_commands ; 
 scalar_t__ FUNC0 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_9__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_config_emit_missing_date_header ; 
 int /*<<< orphan*/  on_config_emit_via_header ; 
 int /*<<< orphan*/  on_config_emit_x_forwarded_headers ; 
 int /*<<< orphan*/  on_config_enter ; 
 int /*<<< orphan*/  on_config_exit ; 
 int /*<<< orphan*/  on_config_forward_close_connection ; 
 int /*<<< orphan*/  on_config_http2_max_concurrent_streams ; 
 int /*<<< orphan*/  on_config_http2_ratio ; 
 int /*<<< orphan*/  on_config_max_buffer_size ; 
 int /*<<< orphan*/  on_config_preserve_host ; 
 int /*<<< orphan*/  on_config_preserve_x_forwarded_proto ; 
 int /*<<< orphan*/  on_config_proxy_protocol ; 
 int /*<<< orphan*/  on_config_reverse_url ; 
 int /*<<< orphan*/  on_config_ssl_cafile ; 
 int /*<<< orphan*/  on_config_ssl_session_cache ; 
 int /*<<< orphan*/  on_config_ssl_verify_peer ; 
 int /*<<< orphan*/  on_config_timeout_connect ; 
 int /*<<< orphan*/  on_config_timeout_first_byte ; 
 int /*<<< orphan*/  on_config_timeout_io ; 
 int /*<<< orphan*/  on_config_timeout_keepalive ; 
 int /*<<< orphan*/  on_config_websocket ; 
 int /*<<< orphan*/  on_config_websocket_timeout ; 

void FUNC4(h2o_globalconf_t *conf)
{
    struct proxy_configurator_t *c = (void *)FUNC0(conf, sizeof(*c));

    /* set default vars */
    c->vars = c->_vars_stack;
    c->vars->conf.io_timeout = H2O_DEFAULT_PROXY_IO_TIMEOUT;
    c->vars->conf.connect_timeout = H2O_DEFAULT_PROXY_IO_TIMEOUT;
    c->vars->conf.first_byte_timeout = H2O_DEFAULT_PROXY_IO_TIMEOUT;
    c->vars->conf.websocket.enabled = 0; /* have websocket proxying disabled by default; until it becomes non-experimental */
    c->vars->conf.websocket.timeout = H2O_DEFAULT_PROXY_WEBSOCKET_TIMEOUT;
    c->vars->conf.max_buffer_size = SIZE_MAX;
    c->vars->conf.http2.max_concurrent_strams = H2O_DEFAULT_PROXY_HTTP2_MAX_CONCURRENT_STREAMS;
    c->vars->conf.http2.ratio = -1;
    c->vars->conf.keepalive_timeout = FUNC3(&conf->proxy.global_socketpool);

    /* setup handlers */
    c->super.enter = on_config_enter;
    c->super.exit = on_config_exit;
    FUNC1(&c->super, "proxy.reverse.url",
                                    H2O_CONFIGURATOR_FLAG_PATH | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR |
                                        H2O_CONFIGURATOR_FLAG_EXPECT_SEQUENCE | H2O_CONFIGURATOR_FLAG_EXPECT_MAPPING |
                                        H2O_CONFIGURATOR_FLAG_DEFERRED,
                                    on_config_reverse_url);
    FUNC1(&c->super, "proxy.preserve-host",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_preserve_host);
    FUNC1(&c->super, "proxy.proxy-protocol",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_proxy_protocol);
    FUNC1(&c->super, "proxy.timeout.io",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, on_config_timeout_io);
    FUNC1(&c->super, "proxy.timeout.connect",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_timeout_connect);
    FUNC1(&c->super, "proxy.timeout.first_byte",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_timeout_first_byte);
    FUNC1(&c->super, "proxy.timeout.keepalive",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_timeout_keepalive);
    FUNC1(&c->super, "proxy.websocket",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, on_config_websocket);
    FUNC1(&c->super, "proxy.websocket.timeout",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_websocket_timeout);
    FUNC1(&c->super, "proxy.ssl.verify-peer",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_ssl_verify_peer);
    FUNC1(&c->super, "proxy.ssl.cafile",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, on_config_ssl_cafile);
    FUNC1(&c->super, "proxy.ssl.session-cache", H2O_CONFIGURATOR_FLAG_ALL_LEVELS,
                                    on_config_ssl_session_cache);
    FUNC1(&c->super, "proxy.preserve-x-forwarded-proto",
                                    H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_preserve_x_forwarded_proto);
    FUNC1(&c->super, "proxy.emit-x-forwarded-headers",
                                    H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_emit_x_forwarded_headers);
    FUNC1(&c->super, "proxy.emit-via-header",
                                    H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, on_config_emit_via_header);
    FUNC1(&c->super, "proxy.emit-missing-date-header",
                                    H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_emit_missing_date_header);
    FUNC2(conf, &c->super, "proxy.header", get_headers_commands);
    FUNC1(&c->super, "proxy.max-buffer-size",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_max_buffer_size);
    FUNC1(&c->super, "proxy.http2.max-concurrent_streams",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_http2_max_concurrent_streams);
    FUNC1(&c->super, "proxy.http2.ratio",
                                    H2O_CONFIGURATOR_FLAG_ALL_LEVELS | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR, on_config_http2_ratio);
    FUNC1(&c->super, "proxy.forward.close-connection",
                                    H2O_CONFIGURATOR_FLAG_GLOBAL | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_forward_close_connection);
}