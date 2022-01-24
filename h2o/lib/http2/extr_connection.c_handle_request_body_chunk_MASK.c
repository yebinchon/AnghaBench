#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_8__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {scalar_t__ len; } ;
typedef  TYPE_6__ h2o_iovec_t ;
struct TYPE_26__ {scalar_t__ (* cb ) (int /*<<< orphan*/ ,TYPE_6__,int) ;int /*<<< orphan*/  ctx; } ;
struct TYPE_27__ {size_t req_body_bytes_received; size_t content_length; TYPE_4__ write_req; int /*<<< orphan*/ * proceed_req; } ;
struct TYPE_29__ {scalar_t__ state; scalar_t__ _req_streaming_in_progress; int /*<<< orphan*/  stream_id; TYPE_5__ req; int /*<<< orphan*/  blocked_by_server; } ;
typedef  TYPE_7__ h2o_http2_stream_t ;
struct TYPE_25__ {TYPE_2__* ctx; } ;
struct TYPE_30__ {TYPE_3__ super; } ;
typedef  TYPE_8__ h2o_http2_conn_t ;
struct TYPE_24__ {TYPE_1__* globalconf; } ;
struct TYPE_23__ {size_t max_request_entity_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_HTTP2_ERROR_PROTOCOL ; 
 int /*<<< orphan*/  H2O_HTTP2_ERROR_REFUSED_STREAM ; 
 int /*<<< orphan*/  H2O_HTTP2_ERROR_STREAM_CLOSED ; 
 scalar_t__ H2O_HTTP2_STREAM_STATE_END_STREAM ; 
 scalar_t__ H2O_HTTP2_STREAM_STATE_REQ_PENDING ; 
 scalar_t__ H2O_HTTP2_STREAM_STATE_SEND_HEADERS ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_6__,int) ; 

__attribute__((used)) static void FUNC7(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream, h2o_iovec_t payload, int is_end_stream)
{
    stream->req.req_body_bytes_received += payload.len;

    /* check size */
    if (stream->req.req_body_bytes_received > conn->super.ctx->globalconf->max_request_entity_size) {
        FUNC5(conn, stream->stream_id, H2O_HTTP2_ERROR_REFUSED_STREAM);
        FUNC2(conn, stream);
        return;
    }
    if (stream->req.content_length != SIZE_MAX) {
        size_t received = stream->req.req_body_bytes_received, cl = stream->req.content_length;
        if (is_end_stream ? (received != cl) : (received > cl)) {
            FUNC5(conn, stream->stream_id, H2O_HTTP2_ERROR_PROTOCOL);
            FUNC2(conn, stream);
            return;
        }
    }

    /* update timer */
    if (!stream->blocked_by_server)
        FUNC3(conn, stream, 1);

    /* handle input */
    if (is_end_stream && stream->state < H2O_HTTP2_STREAM_STATE_REQ_PENDING) {
        FUNC4(conn, stream, H2O_HTTP2_STREAM_STATE_REQ_PENDING);
        if (stream->req.proceed_req != NULL)
            FUNC4(conn, stream, H2O_HTTP2_STREAM_STATE_SEND_HEADERS);
    }
    if (stream->req.write_req.cb(stream->req.write_req.ctx, payload, is_end_stream) != 0) {
        FUNC5(conn, stream->stream_id, H2O_HTTP2_ERROR_STREAM_CLOSED);
        FUNC2(conn, stream);
        return;
    }

    if (is_end_stream) {
        if (stream->_req_streaming_in_progress) {
            FUNC0(stream);
        }
        if (stream->state == H2O_HTTP2_STREAM_STATE_END_STREAM) {
            FUNC1(conn, stream);
        }
    }
}