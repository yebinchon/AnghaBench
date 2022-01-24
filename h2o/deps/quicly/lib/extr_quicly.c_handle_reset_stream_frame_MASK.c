#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct st_quicly_handle_payload_state_t {int /*<<< orphan*/  end; int /*<<< orphan*/  src; } ;
struct TYPE_17__ {TYPE_3__* callbacks; int /*<<< orphan*/  recvstate; } ;
typedef  TYPE_4__ quicly_stream_t ;
struct TYPE_18__ {int /*<<< orphan*/  app_error_code; int /*<<< orphan*/  final_offset; int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_5__ quicly_reset_stream_frame_t ;
struct TYPE_14__ {int /*<<< orphan*/  bytes_consumed; } ;
struct TYPE_15__ {TYPE_1__ max_data; } ;
struct TYPE_19__ {TYPE_2__ ingress; } ;
typedef  TYPE_6__ quicly_conn_t ;
struct TYPE_16__ {int (* on_receive_reset ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_4__**) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_reset_stream_frame_t frame;
    quicly_stream_t *stream;
    int ret;

    if ((ret = FUNC3(&state->src, state->end, &frame)) != 0)
        return ret;

    if ((ret = FUNC2(conn, frame.stream_id, &stream)) != 0 || stream == NULL)
        return ret;

    if (!FUNC5(&stream->recvstate)) {
        uint64_t bytes_missing;
        if ((ret = FUNC4(&stream->recvstate, frame.final_offset, &bytes_missing)) != 0)
            return ret;
        conn->ingress.max_data.bytes_consumed += bytes_missing;
        if ((ret = stream->callbacks->on_receive_reset(stream, FUNC0(frame.app_error_code))) !=
            0)
            return ret;
        if (FUNC6(stream))
            FUNC1(stream, 0);
    }

    return 0;
}