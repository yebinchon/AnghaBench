#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  hpack_max_capacity; int /*<<< orphan*/  hpack_capacity; } ;
struct TYPE_23__ {int /*<<< orphan*/  read_frame; int /*<<< orphan*/  window; TYPE_8__ header_table; } ;
struct TYPE_20__ {int /*<<< orphan*/  cb; } ;
struct TYPE_19__ {int /*<<< orphan*/  hpack_capacity; } ;
struct TYPE_21__ {int /*<<< orphan*/  sent_streams; int /*<<< orphan*/  sending_streams; TYPE_6__ defer_timeout; int /*<<< orphan*/  buf; int /*<<< orphan*/  window; TYPE_5__ header_table; } ;
struct TYPE_14__ {int /*<<< orphan*/  initial_window_size; int /*<<< orphan*/  header_table_size; } ;
struct TYPE_18__ {int /*<<< orphan*/  cb; } ;
struct TYPE_17__ {int /*<<< orphan*/  cb; } ;
struct TYPE_16__ {int /*<<< orphan*/  link; int /*<<< orphan*/  origin_url; int /*<<< orphan*/ * sock; int /*<<< orphan*/ * ctx; } ;
struct st_h2o_http2client_conn_t {TYPE_9__ input; TYPE_7__ output; TYPE_12__ peer_settings; TYPE_4__ keepalive_timeout; TYPE_3__ io_timeout; TYPE_2__ super; int /*<<< orphan*/  streams; int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  h2o_url_t ;
typedef  int /*<<< orphan*/  h2o_socket_t ;
typedef  int /*<<< orphan*/  h2o_httpclient_ctx_t ;
struct TYPE_15__ {int /*<<< orphan*/  conns; } ;
struct TYPE_13__ {TYPE_1__ http2; } ;
typedef  TYPE_10__ h2o_httpclient_connection_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_HTTP2CLIENT_CONN_STATE_OPEN ; 
 int /*<<< orphan*/  H2O_HTTP2_SETTINGS_CLIENT_HEADER_TABLE_SIZE ; 
 TYPE_12__ H2O_HTTP2_SETTINGS_DEFAULT ; 
 int /*<<< orphan*/  emit_writereq ; 
 int /*<<< orphan*/  expect_settings ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct st_h2o_http2client_conn_t* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct st_h2o_http2client_conn_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  on_io_timeout ; 
 int /*<<< orphan*/  on_keepalive_timeout ; 
 int /*<<< orphan*/  stream ; 
 int /*<<< orphan*/  wbuf_buffer_prototype ; 

__attribute__((used)) static struct st_h2o_http2client_conn_t *FUNC8(h2o_httpclient_ctx_t *ctx, h2o_socket_t *sock, h2o_url_t *origin_url,
                                                           h2o_httpclient_connection_pool_t *connpool)
{
    struct st_h2o_http2client_conn_t *conn = FUNC4(sizeof(*conn));
    FUNC7(conn, 0, sizeof(*conn));
    conn->super.ctx = ctx;
    conn->super.sock = sock;
    conn->state = H2O_HTTP2CLIENT_CONN_STATE_OPEN;
    conn->peer_settings = H2O_HTTP2_SETTINGS_DEFAULT;
    conn->streams = FUNC6(stream);
    FUNC5(NULL, &conn->super.origin_url, origin_url);
    if (connpool != NULL)
        FUNC3(&connpool->http2.conns, &conn->super.link);
    conn->io_timeout.cb = on_io_timeout;
    conn->keepalive_timeout.cb = on_keepalive_timeout;

    /* output */
    conn->output.header_table.hpack_capacity = H2O_HTTP2_SETTINGS_CLIENT_HEADER_TABLE_SIZE;
    FUNC1(&conn->output.window, conn->peer_settings.initial_window_size);
    FUNC0(&conn->output.buf, &wbuf_buffer_prototype);
    conn->output.defer_timeout.cb = emit_writereq;
    FUNC2(&conn->output.sending_streams);
    FUNC2(&conn->output.sent_streams);

    /* input */
    conn->input.header_table.hpack_capacity = conn->input.header_table.hpack_max_capacity =
        H2O_HTTP2_SETTINGS_DEFAULT.header_table_size;
    FUNC1(&conn->input.window, H2O_HTTP2_SETTINGS_DEFAULT.initial_window_size);
    conn->input.read_frame = expect_settings;

    return conn;
}