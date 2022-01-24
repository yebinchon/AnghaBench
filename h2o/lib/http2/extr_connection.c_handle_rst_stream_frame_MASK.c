#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_http2_stream_t ;
typedef  int /*<<< orphan*/  h2o_http2_rst_stream_payload_t ;
struct TYPE_4__ {int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_1__ h2o_http2_frame_t ;
typedef  int /*<<< orphan*/  h2o_http2_conn_t ;

/* Variables and functions */
 int H2O_HTTP2_ERROR_PROTOCOL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(h2o_http2_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_rst_stream_payload_t payload;
    h2o_http2_stream_t *stream;
    int ret;

    if ((ret = FUNC1(&payload, frame, err_desc)) != 0)
        return ret;
    if (FUNC3(conn, frame->stream_id)) {
        *err_desc = "unexpected stream id in RST_STREAM frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    stream = FUNC0(conn, frame->stream_id);
    if (stream != NULL) {
        /* reset the stream */
        FUNC2(conn, stream);
    }
    /* TODO log */

    return 0;
}