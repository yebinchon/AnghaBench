#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_20__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_15__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_27__ {int num_ranges; TYPE_2__* ranges; } ;
struct TYPE_23__ {size_t data_off; TYPE_3__ received; } ;
struct TYPE_24__ {scalar_t__ window; } ;
struct TYPE_33__ {scalar_t__ stream_id; TYPE_7__* callbacks; TYPE_15__ recvstate; TYPE_20__* conn; TYPE_1__ _recv_aux; } ;
typedef  TYPE_9__ quicly_stream_t ;
struct TYPE_32__ {scalar_t__ len; size_t base; } ;
struct TYPE_22__ {scalar_t__ offset; TYPE_8__ data; int /*<<< orphan*/  is_fin; } ;
typedef  TYPE_10__ quicly_stream_frame_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_31__ {int (* on_receive ) (TYPE_9__*,size_t,size_t,size_t) ;} ;
struct TYPE_28__ {scalar_t__ max_committed; } ;
struct TYPE_29__ {scalar_t__ bytes_consumed; TYPE_4__ sender; } ;
struct TYPE_30__ {TYPE_5__ max_data; } ;
struct TYPE_26__ {scalar_t__ end; } ;
struct TYPE_25__ {TYPE_6__ ingress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_20__*,int /*<<< orphan*/ ,TYPE_9__*,scalar_t__,scalar_t__) ; 
 int QUICLY_TRANSPORT_ERROR_FLOW_CONTROL ; 
 int /*<<< orphan*/  STREAM_RECEIVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_15__*) ; 
 int FUNC4 (TYPE_15__*,scalar_t__,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 scalar_t__ FUNC6 (TYPE_9__*) ; 
 scalar_t__ FUNC7 (TYPE_9__*) ; 
 int FUNC8 (TYPE_9__*,size_t,size_t,size_t) ; 

__attribute__((used)) static int FUNC9(quicly_stream_t *stream, quicly_stream_frame_t *frame)
{
    int ret;

    FUNC0(STREAM_RECEIVE, stream->conn, FUNC2(), stream, frame->offset, frame->data.len);

    if (FUNC3(&stream->recvstate))
        return 0;

    if (stream->stream_id >= 0) {
        /* flow control */
        uint64_t max_stream_data = frame->offset + frame->data.len;
        if ((int64_t)stream->_recv_aux.window < (int64_t)max_stream_data - (int64_t)stream->recvstate.data_off)
            return QUICLY_TRANSPORT_ERROR_FLOW_CONTROL;
        if (stream->recvstate.received.ranges[stream->recvstate.received.num_ranges - 1].end < max_stream_data) {
            uint64_t newly_received =
                max_stream_data - stream->recvstate.received.ranges[stream->recvstate.received.num_ranges - 1].end;
            if (stream->conn->ingress.max_data.bytes_consumed + newly_received >
                stream->conn->ingress.max_data.sender.max_committed)
                return QUICLY_TRANSPORT_ERROR_FLOW_CONTROL;
            stream->conn->ingress.max_data.bytes_consumed += newly_received;
            /* FIXME send MAX_DATA if necessary */
        }
    }

    /* update recvbuf */
    size_t apply_len = frame->data.len;
    if ((ret = FUNC4(&stream->recvstate, frame->offset, &apply_len, frame->is_fin)) != 0)
        return ret;

    if (apply_len != 0 || FUNC3(&stream->recvstate)) {
        uint64_t buf_offset = frame->offset + frame->data.len - apply_len - stream->recvstate.data_off;
        if ((ret = stream->callbacks->on_receive(stream, (size_t)buf_offset, frame->data.base + frame->data.len - apply_len,
                                                 apply_len)) != 0)
            return ret;
    }

    if (FUNC6(stream))
        FUNC5(stream);

    if (FUNC7(stream))
        FUNC1(stream, 0);

    return 0;
}