#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sending_link; TYPE_1__* buf; int /*<<< orphan*/  window; } ;
struct st_h2o_http2client_stream_t {TYPE_4__ output; TYPE_3__* conn; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  sending_streams; } ;
struct TYPE_7__ {TYPE_2__ output; } ;
struct TYPE_5__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct st_h2o_http2client_stream_t *stream, ssize_t delta)
{
    ssize_t before = FUNC1(&stream->output.window);
    if (FUNC2(&stream->output.window, delta) != 0)
        return -1;
    ssize_t after = FUNC1(&stream->output.window);
    if (before <= 0 && 0 < after && stream->output.buf != NULL && stream->output.buf->size != 0) {
        FUNC0(!FUNC4(&stream->output.sending_link));
        FUNC3(&stream->conn->output.sending_streams, &stream->output.sending_link);
    }
    return 0;
}