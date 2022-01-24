#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  window_size_increment; } ;
typedef  TYPE_2__ h2o_http2_window_update_payload_t ;
typedef  int /*<<< orphan*/  h2o_http2_stream_t ;
struct TYPE_16__ {int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_3__ h2o_http2_frame_t ;
struct TYPE_14__ {int /*<<< orphan*/  window; } ;
struct TYPE_17__ {TYPE_1__ _write; } ;
typedef  TYPE_4__ h2o_http2_conn_t ;

/* Variables and functions */
 int H2O_HTTP2_ERROR_FLOW_CONTROL ; 
 int H2O_HTTP2_ERROR_PROTOCOL ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,TYPE_3__*,char const**,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(h2o_http2_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_window_update_payload_t payload;
    int ret, err_is_stream_level;

    if ((ret = FUNC1(&payload, frame, err_desc, &err_is_stream_level)) != 0) {
        if (err_is_stream_level) {
            h2o_http2_stream_t *stream = FUNC0(conn, frame->stream_id);
            if (stream != NULL)
                FUNC2(conn, stream);
            FUNC6(conn, frame->stream_id, ret);
            return 0;
        } else {
            return ret;
        }
    }

    if (frame->stream_id == 0) {
        if (FUNC3(&conn->_write.window, payload.window_size_increment) != 0) {
            *err_desc = "flow control window overflow";
            return H2O_HTTP2_ERROR_FLOW_CONTROL;
        }
    } else if (!FUNC4(conn, frame->stream_id)) {
        h2o_http2_stream_t *stream = FUNC0(conn, frame->stream_id);
        if (stream != NULL) {
            if (FUNC7(stream, payload.window_size_increment) != 0) {
                FUNC2(conn, stream);
                FUNC6(conn, frame->stream_id, H2O_HTTP2_ERROR_FLOW_CONTROL);
                return 0;
            }
        }
    } else {
        *err_desc = "invalid stream id in WINDOW_UPDATE frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    FUNC5(conn);

    return 0;
}