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
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/  _scheduler; int /*<<< orphan*/  _link; int /*<<< orphan*/  output_window; } ;
typedef  TYPE_1__ h2o_http2_stream_t ;

/* Variables and functions */
 scalar_t__ H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(h2o_http2_stream_t *stream, ssize_t delta)
{
    ssize_t cur = FUNC3(&stream->output_window);
    if (FUNC4(&stream->output_window, delta) != 0)
        return -1;
    if (cur <= 0 && FUNC3(&stream->output_window) > 0 &&
        (FUNC2(stream) || stream->state == H2O_HTTP2_STREAM_STATE_SEND_BODY_IS_FINAL)) {
        FUNC0(!FUNC5(&stream->_link));
        FUNC1(&stream->_scheduler);
    }
    return 0;
}