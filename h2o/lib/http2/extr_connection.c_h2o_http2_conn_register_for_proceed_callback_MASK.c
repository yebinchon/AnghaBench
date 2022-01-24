#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ state; int /*<<< orphan*/  _link; int /*<<< orphan*/  _scheduler; int /*<<< orphan*/  output_window; } ;
typedef  TYPE_2__ h2o_http2_stream_t ;
struct TYPE_8__ {int /*<<< orphan*/  streams_to_proceed; } ;
struct TYPE_10__ {TYPE_1__ _write; } ;
typedef  TYPE_3__ h2o_http2_conn_t ;

/* Variables and functions */
 scalar_t__ H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    FUNC1(conn);

    if (FUNC3(stream) || stream->state >= H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL) {
        if (FUNC4(&stream->output_window) > 0) {
            FUNC0(!FUNC6(&stream->_link));
            FUNC2(&stream->_scheduler);
        }
    } else {
        FUNC5(&conn->_write.streams_to_proceed, &stream->_link);
    }
}