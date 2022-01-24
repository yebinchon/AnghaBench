#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  window; } ;
struct TYPE_23__ {scalar_t__ state; TYPE_2__ input_window; int /*<<< orphan*/  _req_streaming_in_progress; } ;
typedef  TYPE_3__ h2o_http2_stream_t ;
struct TYPE_24__ {scalar_t__ length; scalar_t__ stream_id; int flags; } ;
typedef  TYPE_4__ h2o_http2_frame_t ;
struct TYPE_25__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
typedef  TYPE_5__ h2o_http2_data_payload_t ;
struct TYPE_21__ {scalar_t__ max_open; } ;
struct TYPE_26__ {TYPE_1__ pull_stream_ids; int /*<<< orphan*/  _input_window; } ;
typedef  TYPE_6__ h2o_http2_conn_t ;

/* Variables and functions */
 int H2O_HTTP2_ERROR_PROTOCOL ; 
 int /*<<< orphan*/  H2O_HTTP2_ERROR_STREAM_CLOSED ; 
 int H2O_HTTP2_FRAME_FLAG_END_STREAM ; 
 int H2O_HTTP2_SETTINGS_HOST_CONNECTION_WINDOW_SIZE ; 
 scalar_t__ H2O_HTTP2_STREAM_STATE_RECV_BODY ; 
 TYPE_3__* FUNC0 (TYPE_6__*,scalar_t__) ; 
 int FUNC1 (TYPE_5__*,TYPE_4__*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(h2o_http2_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_data_payload_t payload;
    h2o_http2_stream_t *stream;
    int ret;

    if ((ret = FUNC1(&payload, frame, err_desc)) != 0)
        return ret;

    /* update connection-level window */
    FUNC3(&conn->_input_window, frame->length);
    if (FUNC4(&conn->_input_window) <= H2O_HTTP2_SETTINGS_HOST_CONNECTION_WINDOW_SIZE / 2)
        FUNC7(conn, 0, &conn->_input_window,
                           H2O_HTTP2_SETTINGS_HOST_CONNECTION_WINDOW_SIZE - FUNC4(&conn->_input_window));

    /* check state */
    if ((stream = FUNC0(conn, frame->stream_id)) == NULL) {
        if (frame->stream_id <= conn->pull_stream_ids.max_open) {
            FUNC8(conn, frame->stream_id, H2O_HTTP2_ERROR_STREAM_CLOSED);
            return 0;
        } else {
            *err_desc = "invalid DATA frame";
            return H2O_HTTP2_ERROR_PROTOCOL;
        }
    }
    if (stream->state != H2O_HTTP2_STREAM_STATE_RECV_BODY && !stream->_req_streaming_in_progress) {
        FUNC8(conn, frame->stream_id, H2O_HTTP2_ERROR_STREAM_CLOSED);
        FUNC2(conn, stream);
        return 0;
    }

    /* update stream-level window (doing it here could end up in sending multiple WINDOW_UPDATE frames if the receive window is
     * fully-used, but no need to worry; in such case we'd be sending ACKs at a very fast rate anyways) */
    FUNC3(&stream->input_window.window, frame->length);
    if (frame->length != payload.length)
        FUNC9(conn, stream, frame->length - payload.length);

    /* actually handle the input */
    if (payload.length != 0 || (frame->flags & H2O_HTTP2_FRAME_FLAG_END_STREAM) != 0)
        FUNC6(conn, stream, FUNC5(payload.data, payload.length),
                                  (frame->flags & H2O_HTTP2_FRAME_FLAG_END_STREAM) != 0);

    return 0;
}