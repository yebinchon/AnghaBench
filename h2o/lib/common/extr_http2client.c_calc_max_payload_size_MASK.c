#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  window; } ;
struct st_h2o_http2client_stream_t {TYPE_3__* conn; TYPE_1__ output; } ;
typedef  size_t ssize_t ;
struct TYPE_5__ {size_t max_frame_size; } ;
struct TYPE_6__ {TYPE_2__ peer_settings; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (size_t,size_t) ; 

__attribute__((used)) static size_t FUNC3(struct st_h2o_http2client_stream_t *stream)
{
    ssize_t conn_max, stream_max;

    if ((conn_max = FUNC0(stream->conn)) <= 0)
        return 0;
    if ((stream_max = FUNC1(&stream->output.window)) <= 0)
        return 0;
    return FUNC2(FUNC2(conn_max, stream_max), stream->conn->peer_settings.max_frame_size);
}