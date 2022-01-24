#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ h2o_send_state_t ;
struct TYPE_11__ {size_t bytes_sent; scalar_t__ upstream_refused; int /*<<< orphan*/  send_server_timing; } ;
struct TYPE_12__ {TYPE_2__ req; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  output_window; } ;
typedef  TYPE_3__ h2o_http2_stream_t ;
struct TYPE_10__ {int /*<<< orphan*/  window; } ;
struct TYPE_13__ {TYPE_1__ _write; } ;
typedef  TYPE_4__ h2o_http2_conn_t ;
struct TYPE_14__ {scalar_t__ size; scalar_t__ bytes; } ;
typedef  TYPE_5__ h2o_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_HTTP2_ERROR_PROTOCOL ; 
 int /*<<< orphan*/  H2O_HTTP2_ERROR_REFUSED_STREAM ; 
 int /*<<< orphan*/  H2O_HTTP2_FRAME_FLAG_END_STREAM ; 
 scalar_t__ H2O_HTTP2_FRAME_HEADER_SIZE ; 
 int /*<<< orphan*/  H2O_HTTP2_FRAME_TYPE_DATA ; 
 scalar_t__ H2O_SEND_STATE_ERROR ; 
 scalar_t__ H2O_SEND_STATE_FINAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC4(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream, h2o_buffer_t **outbuf, size_t length,
                               h2o_send_state_t send_state)
{
    FUNC0(outbuf != NULL);
    /* send a DATA frame if there's data or the END_STREAM flag to send */
    if (length || send_state == H2O_SEND_STATE_FINAL) {
        FUNC1(
            (void *)((*outbuf)->bytes + (*outbuf)->size), length, H2O_HTTP2_FRAME_TYPE_DATA,
            (send_state == H2O_SEND_STATE_FINAL && !stream->req.send_server_timing) ? H2O_HTTP2_FRAME_FLAG_END_STREAM : 0,
            stream->stream_id);
        FUNC3(&conn->_write.window, length);
        FUNC3(&stream->output_window, length);
        (*outbuf)->size += length + H2O_HTTP2_FRAME_HEADER_SIZE;
        stream->req.bytes_sent += length;
    }
    /* send a RST_STREAM if there's an error */
    if (send_state == H2O_SEND_STATE_ERROR) {
        FUNC2(
            outbuf, stream->stream_id, -(stream->req.upstream_refused ? H2O_HTTP2_ERROR_REFUSED_STREAM : H2O_HTTP2_ERROR_PROTOCOL));
    }
}