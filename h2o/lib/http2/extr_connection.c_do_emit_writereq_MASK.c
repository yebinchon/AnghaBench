#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_7__ h2o_iovec_t ;
struct TYPE_20__ {scalar_t__ open; } ;
struct TYPE_19__ {scalar_t__ open; } ;
struct TYPE_21__ {TYPE_5__ push; TYPE_4__ pull; } ;
struct TYPE_18__ {TYPE_2__* ctx; } ;
struct TYPE_16__ {TYPE_12__* buf; TYPE_12__* buf_in_flight; } ;
struct TYPE_23__ {int state; TYPE_6__ num_streams; int /*<<< orphan*/  _timeout_entry; TYPE_3__ super; TYPE_1__ _write; int /*<<< orphan*/  sock; int /*<<< orphan*/  scheduler; } ;
typedef  TYPE_8__ h2o_http2_conn_t ;
struct TYPE_17__ {int /*<<< orphan*/  loop; } ;
struct TYPE_15__ {scalar_t__ size; int /*<<< orphan*/  bytes; } ;

/* Variables and functions */
#define  H2O_HTTP2_CONN_STATE_HALF_CLOSED 130 
#define  H2O_HTTP2_CONN_STATE_IS_CLOSING 129 
#define  H2O_HTTP2_CONN_STATE_OPEN 128 
 int /*<<< orphan*/  H2O_HTTP2_DEFAULT_OUTBUF_WRITE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  emit_writereq_of_openref ; 
 int /*<<< orphan*/  FUNC2 (TYPE_12__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  h2o_http2_wbuf_buffer_prototype ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_write_complete ; 

void FUNC8(h2o_http2_conn_t *conn)
{
    FUNC0(conn->_write.buf_in_flight == NULL);

    /* push DATA frames */
    if (conn->state < H2O_HTTP2_CONN_STATE_IS_CLOSING && FUNC3(conn) > 0)
        FUNC4(&conn->scheduler, emit_writereq_of_openref, conn);

    if (conn->_write.buf->size != 0) {
        /* write and wait for completion */
        h2o_iovec_t buf = {conn->_write.buf->bytes, conn->_write.buf->size};
        FUNC5(conn->sock, &buf, 1, on_write_complete);
        conn->_write.buf_in_flight = conn->_write.buf;
        FUNC2(&conn->_write.buf, &h2o_http2_wbuf_buffer_prototype);
        FUNC7(&conn->_timeout_entry);
        FUNC6(conn->super.ctx->loop, H2O_HTTP2_DEFAULT_OUTBUF_WRITE_TIMEOUT, &conn->_timeout_entry);
    }

    /* close the connection if necessary */
    switch (conn->state) {
    case H2O_HTTP2_CONN_STATE_OPEN:
        break;
    case H2O_HTTP2_CONN_STATE_HALF_CLOSED:
        if (conn->num_streams.pull.open + conn->num_streams.push.open != 0)
            break;
        conn->state = H2O_HTTP2_CONN_STATE_IS_CLOSING;
    /* fall-thru */
    case H2O_HTTP2_CONN_STATE_IS_CLOSING:
        FUNC1(conn);
        break;
    }
}