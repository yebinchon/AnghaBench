#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct st_h2o_http2client_stream_t {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  window; } ;
struct st_h2o_http2client_conn_t {scalar_t__ max_open_stream_id; TYPE_1__ output; } ;
struct TYPE_8__ {int /*<<< orphan*/  window_size_increment; } ;
typedef  TYPE_2__ h2o_http2_window_update_payload_t ;
struct TYPE_9__ {scalar_t__ stream_id; } ;
typedef  TYPE_3__ h2o_http2_frame_t ;

/* Variables and functions */
 int H2O_HTTP2_ERROR_FLOW_CONTROL ; 
 int H2O_HTTP2_ERROR_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http2client_stream_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http2client_stream_t*) ; 
 scalar_t__ FUNC2 (struct st_h2o_http2client_conn_t*) ; 
 struct st_h2o_http2client_stream_t* FUNC3 (struct st_h2o_http2client_conn_t*,scalar_t__) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*,char const**,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h2o_httpclient_error_flow_control ; 
 int /*<<< orphan*/  h2o_httpclient_error_http2_protocol_violation ; 
 int /*<<< orphan*/  FUNC6 (struct st_h2o_http2client_conn_t*) ; 
 int /*<<< orphan*/  FUNC7 (struct st_h2o_http2client_conn_t*,scalar_t__,int) ; 
 scalar_t__ FUNC8 (struct st_h2o_http2client_stream_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct st_h2o_http2client_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_window_update_payload_t payload;
    int ret, err_is_stream_level;

    if ((ret = FUNC4(&payload, frame, err_desc, &err_is_stream_level)) != 0) {
        if (err_is_stream_level) {
            FUNC7(conn, frame->stream_id, ret);
            struct st_h2o_http2client_stream_t *stream = FUNC3(conn, frame->stream_id);
            if (stream != NULL) {
                FUNC0(stream, h2o_httpclient_error_http2_protocol_violation);
                FUNC1(stream);
            }
            return 0;
        } else {
            return ret;
        }
    }

    if (frame->stream_id == 0) {
        if (FUNC5(&conn->output.window, payload.window_size_increment) != 0) {
            *err_desc = "flow control window overflow";
            return H2O_HTTP2_ERROR_FLOW_CONTROL;
        }
    } else if (frame->stream_id <= conn->max_open_stream_id) {
        struct st_h2o_http2client_stream_t *stream = FUNC3(conn, frame->stream_id);
        if (stream != NULL) {
            if (FUNC8(stream, payload.window_size_increment) != 0) {
                FUNC7(conn, frame->stream_id, H2O_HTTP2_ERROR_FLOW_CONTROL);
                FUNC0(stream, h2o_httpclient_error_flow_control);
                FUNC1(stream);
                return 0;
            }
        }
    } else {
        *err_desc = "invalid stream id in WINDOW_UPDATE frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    if (FUNC2(conn) > 0)
        FUNC6(conn);

    return 0;
}