#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  blocked_by_server; } ;
typedef  TYPE_1__ h2o_http2_stream_t ;
typedef  int /*<<< orphan*/  h2o_http2_conn_t ;

/* Variables and functions */
 scalar_t__ H2O_HTTP2_STREAM_STATE_RECV_HEADERS ; 
 scalar_t__ H2O_HTTP2_STREAM_STATE_REQ_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    FUNC0(stream->state == H2O_HTTP2_STREAM_STATE_RECV_HEADERS || stream->state == H2O_HTTP2_STREAM_STATE_REQ_PENDING);

    if (FUNC4(conn, stream))
        return;

    FUNC3(conn, stream, H2O_HTTP2_STREAM_STATE_REQ_PENDING);
    if (!stream->blocked_by_server)
        FUNC2(conn, stream, 1);
    FUNC1(conn, stream);
}