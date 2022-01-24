#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_26__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_10__ ;

/* Type definitions */
struct TYPE_31__ {TYPE_3__* ctx; int /*<<< orphan*/  cb; } ;
struct TYPE_32__ {TYPE_2__ write_req; } ;
struct TYPE_28__ {scalar_t__ dependency; } ;
struct TYPE_33__ {scalar_t__ state; TYPE_26__* req_body; TYPE_3__ req; TYPE_10__ received_priority; int /*<<< orphan*/  _req_streaming_in_progress; } ;
typedef  TYPE_4__ h2o_http2_stream_t ;
struct TYPE_34__ {int /*<<< orphan*/  headers_len; int /*<<< orphan*/  headers; TYPE_10__ priority; } ;
typedef  TYPE_5__ h2o_http2_headers_payload_t ;
struct TYPE_35__ {int stream_id; int flags; } ;
typedef  TYPE_6__ h2o_http2_frame_t ;
struct TYPE_29__ {int max_open; } ;
struct TYPE_36__ {TYPE_26__* _headers_unparsed; int /*<<< orphan*/  _read_expect; TYPE_1__ pull_stream_ids; } ;
typedef  TYPE_7__ h2o_http2_conn_t ;
struct TYPE_30__ {int /*<<< orphan*/  size; int /*<<< orphan*/  bytes; } ;

/* Variables and functions */
 int H2O_HTTP2_ERROR_PROTOCOL ; 
 int H2O_HTTP2_ERROR_STREAM_CLOSED ; 
 int H2O_HTTP2_FRAME_FLAG_END_HEADERS ; 
 int H2O_HTTP2_FRAME_FLAG_END_STREAM ; 
 int H2O_HTTP2_FRAME_FLAG_PRIORITY ; 
 scalar_t__ H2O_HTTP2_STREAM_STATE_RECV_BODY ; 
 int /*<<< orphan*/  expect_continuation_of_headers ; 
 int /*<<< orphan*/  FUNC0 (TYPE_26__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_26__**,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_7__*,int) ; 
 int FUNC3 (TYPE_5__*,TYPE_6__*,char const**) ; 
 TYPE_4__* FUNC4 (TYPE_7__*,int,int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,TYPE_4__*) ; 
 int /*<<< orphan*/  h2o_socket_buffer_prototype ; 
 int FUNC6 (TYPE_7__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 int FUNC7 (TYPE_7__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,TYPE_4__*,TYPE_10__*,int) ; 
 int /*<<< orphan*/  write_req_first ; 

__attribute__((used)) static int FUNC10(h2o_http2_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_headers_payload_t payload;
    h2o_http2_stream_t *stream;
    int ret;

    /* decode */
    if ((ret = FUNC3(&payload, frame, err_desc)) != 0)
        return ret;
    if ((frame->stream_id & 1) == 0) {
        *err_desc = "invalid stream id in HEADERS frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }
    if (frame->stream_id <= conn->pull_stream_ids.max_open) {
        if ((stream = FUNC2(conn, frame->stream_id)) == NULL) {
            *err_desc = "closed stream id in HEADERS frame";
            return H2O_HTTP2_ERROR_STREAM_CLOSED;
        }
        if (stream->state < H2O_HTTP2_STREAM_STATE_RECV_BODY ||
            (stream->state > H2O_HTTP2_STREAM_STATE_RECV_BODY && !stream->_req_streaming_in_progress)) {
            *err_desc = "invalid stream id in HEADERS frame";
            return H2O_HTTP2_ERROR_PROTOCOL;
        }

        /* is a trailer */
        if ((frame->flags & H2O_HTTP2_FRAME_FLAG_END_STREAM) == 0) {
            *err_desc = "trailing HEADERS frame MUST have END_STREAM flag set";
            return H2O_HTTP2_ERROR_PROTOCOL;
        }
        if ((frame->flags & H2O_HTTP2_FRAME_FLAG_END_HEADERS) == 0)
            goto PREPARE_FOR_CONTINUATION;
        return FUNC7(conn, stream, payload.headers, payload.headers_len, err_desc);
    }
    if (frame->stream_id == payload.priority.dependency) {
        *err_desc = "stream cannot depend on itself";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    /* open or determine the stream and prepare */
    if ((stream = FUNC2(conn, frame->stream_id)) != NULL) {
        if ((frame->flags & H2O_HTTP2_FRAME_FLAG_PRIORITY) != 0) {
            FUNC9(conn, stream, &payload.priority, 1);
            stream->received_priority = payload.priority;
        }
    } else {
        stream = FUNC4(conn, frame->stream_id, NULL, &payload.priority);
        FUNC9(conn, stream, &payload.priority, 0);
    }
    FUNC5(conn, stream);
    stream->req.write_req.cb = write_req_first;
    stream->req.write_req.ctx = &stream->req;

    /* setup container for request body if it is expected to arrive */
    if ((frame->flags & H2O_HTTP2_FRAME_FLAG_END_STREAM) == 0)
        FUNC0(&stream->req_body, &h2o_socket_buffer_prototype);

    if ((frame->flags & H2O_HTTP2_FRAME_FLAG_END_HEADERS) != 0) {
        /* request headers are complete, handle it */
        return FUNC6(conn, stream, payload.headers, payload.headers_len, err_desc);
    }

PREPARE_FOR_CONTINUATION:
    /* request is not complete, store in buffer */
    conn->_read_expect = expect_continuation_of_headers;
    FUNC0(&conn->_headers_unparsed, &h2o_socket_buffer_prototype);
    FUNC1(&conn->_headers_unparsed, payload.headers_len);
    FUNC8(conn->_headers_unparsed->bytes, payload.headers, payload.headers_len);
    conn->_headers_unparsed->size = payload.headers_len;
    return 0;
}