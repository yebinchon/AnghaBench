#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/  req; int /*<<< orphan*/  blocked_by_server; int /*<<< orphan*/  _req_streaming_in_progress; } ;
typedef  TYPE_1__ h2o_http2_stream_t ;
typedef  int /*<<< orphan*/  h2o_http2_conn_t ;

/* Variables and functions */
 scalar_t__ H2O_HTTP2_STREAM_STATE_END_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    if (stream->state == H2O_HTTP2_STREAM_STATE_END_STREAM) {
        if (!stream->_req_streaming_in_progress) {
            FUNC0(conn, stream);
        }
    } else {
        if (!stream->blocked_by_server)
            FUNC1(conn, stream, 1);
        FUNC2(&stream->req);
    }
}