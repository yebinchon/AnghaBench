
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct st_quicly_handle_payload_state_t {int end; int src; } ;
struct TYPE_17__ {TYPE_3__* callbacks; int recvstate; } ;
typedef TYPE_4__ quicly_stream_t ;
struct TYPE_18__ {int app_error_code; int final_offset; int stream_id; } ;
typedef TYPE_5__ quicly_reset_stream_frame_t ;
struct TYPE_14__ {int bytes_consumed; } ;
struct TYPE_15__ {TYPE_1__ max_data; } ;
struct TYPE_19__ {TYPE_2__ ingress; } ;
typedef TYPE_6__ quicly_conn_t ;
struct TYPE_16__ {int (* on_receive_reset ) (TYPE_4__*,int ) ;} ;


 int QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE (int ) ;
 int destroy_stream (TYPE_4__*,int ) ;
 int get_stream_or_open_if_new (TYPE_6__*,int ,TYPE_4__**) ;
 int quicly_decode_reset_stream_frame (int *,int ,TYPE_5__*) ;
 int quicly_recvstate_reset (int *,int ,scalar_t__*) ;
 int quicly_recvstate_transfer_complete (int *) ;
 scalar_t__ stream_is_destroyable (TYPE_4__*) ;
 int stub1 (TYPE_4__*,int ) ;

__attribute__((used)) static int handle_reset_stream_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_reset_stream_frame_t frame;
    quicly_stream_t *stream;
    int ret;

    if ((ret = quicly_decode_reset_stream_frame(&state->src, state->end, &frame)) != 0)
        return ret;

    if ((ret = get_stream_or_open_if_new(conn, frame.stream_id, &stream)) != 0 || stream == ((void*)0))
        return ret;

    if (!quicly_recvstate_transfer_complete(&stream->recvstate)) {
        uint64_t bytes_missing;
        if ((ret = quicly_recvstate_reset(&stream->recvstate, frame.final_offset, &bytes_missing)) != 0)
            return ret;
        conn->ingress.max_data.bytes_consumed += bytes_missing;
        if ((ret = stream->callbacks->on_receive_reset(stream, QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(frame.app_error_code))) !=
            0)
            return ret;
        if (stream_is_destroyable(stream))
            destroy_stream(stream, 0);
    }

    return 0;
}
