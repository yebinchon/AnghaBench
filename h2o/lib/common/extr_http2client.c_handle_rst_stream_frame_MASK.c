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
struct st_h2o_http2client_stream_t {int dummy; } ;
struct st_h2o_http2client_conn_t {scalar_t__ max_open_stream_id; } ;
typedef  int /*<<< orphan*/  h2o_http2_rst_stream_payload_t ;
struct TYPE_4__ {scalar_t__ stream_id; } ;
typedef  TYPE_1__ h2o_http2_frame_t ;

/* Variables and functions */
 int H2O_HTTP2_ERROR_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (struct st_h2o_http2client_stream_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct st_h2o_http2client_stream_t*) ; 
 struct st_h2o_http2client_stream_t* FUNC2 (struct st_h2o_http2client_conn_t*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  h2o_httpclient_error_refused_stream ; 

__attribute__((used)) static int FUNC4(struct st_h2o_http2client_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_rst_stream_payload_t payload;
    struct st_h2o_http2client_stream_t *stream;
    int ret;

    if ((ret = FUNC3(&payload, frame, err_desc)) != 0)
        return ret;
    if (frame->stream_id > conn->max_open_stream_id) {
        *err_desc = "unexpected stream id in RST_STREAM frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    stream = FUNC2(conn, frame->stream_id);
    if (stream != NULL) {
        /* reset the stream */
        FUNC0(stream, h2o_httpclient_error_refused_stream);
        FUNC1(stream);
    }

    return 0;
}