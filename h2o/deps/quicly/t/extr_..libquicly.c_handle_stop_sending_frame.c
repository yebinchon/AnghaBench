
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct st_quicly_handle_payload_state_t {int end; int src; } ;
struct TYPE_9__ {TYPE_1__* callbacks; int sendstate; } ;
typedef TYPE_2__ quicly_stream_t ;
struct TYPE_10__ {int app_error_code; int stream_id; } ;
typedef TYPE_3__ quicly_stop_sending_frame_t ;
typedef int quicly_conn_t ;
struct TYPE_8__ {int (* on_send_stop ) (TYPE_2__*,int) ;} ;


 int QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE (int ) ;
 int get_stream_or_open_if_new (int *,int ,TYPE_2__**) ;
 int quicly_decode_stop_sending_frame (int *,int ,TYPE_3__*) ;
 int quicly_reset_stream (TYPE_2__*,int) ;
 scalar_t__ quicly_sendstate_is_open (int *) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static int handle_stop_sending_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_stop_sending_frame_t frame;
    quicly_stream_t *stream;
    int ret;

    if ((ret = quicly_decode_stop_sending_frame(&state->src, state->end, &frame)) != 0)
        return ret;

    if ((ret = get_stream_or_open_if_new(conn, frame.stream_id, &stream)) != 0 || stream == ((void*)0))
        return ret;

    if (quicly_sendstate_is_open(&stream->sendstate)) {

        int err = QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(frame.app_error_code);
        quicly_reset_stream(stream, err);
        if ((ret = stream->callbacks->on_send_stop(stream, err)) != 0)
            return ret;
    }

    return 0;
}
