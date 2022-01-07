
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct st_quicly_handle_payload_state_t {int end; int src; } ;
struct TYPE_8__ {int max_stream_data_sender; } ;
struct TYPE_9__ {TYPE_1__ _send_aux; } ;
typedef TYPE_2__ quicly_stream_t ;
struct TYPE_10__ {int stream_id; int offset; } ;
typedef TYPE_3__ quicly_stream_data_blocked_frame_t ;
typedef int quicly_conn_t ;


 int QUICLY_PROBE (int ,int *,int ,int ,int ) ;
 int QUICLY_TRANSPORT_ERROR_FRAME_ENCODING ;
 int STREAM_DATA_BLOCKED_RECEIVE ;
 int probe_now () ;
 int quicly_decode_stream_data_blocked_frame (int *,int ,TYPE_3__*) ;
 TYPE_2__* quicly_get_stream (int *,int ) ;
 int quicly_is_client (int *) ;
 int quicly_maxsender_request_transmit (int *) ;
 int quicly_stream_has_receive_side (int ,int ) ;
 int sched_stream_control (TYPE_2__*) ;
 scalar_t__ should_send_max_stream_data (TYPE_2__*) ;

__attribute__((used)) static int handle_stream_data_blocked_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_stream_data_blocked_frame_t frame;
    quicly_stream_t *stream;
    int ret;

    if ((ret = quicly_decode_stream_data_blocked_frame(&state->src, state->end, &frame)) != 0)
        return ret;

    QUICLY_PROBE(STREAM_DATA_BLOCKED_RECEIVE, conn, probe_now(), frame.stream_id, frame.offset);

    if (!quicly_stream_has_receive_side(quicly_is_client(conn), frame.stream_id))
        return QUICLY_TRANSPORT_ERROR_FRAME_ENCODING;

    if ((stream = quicly_get_stream(conn, frame.stream_id)) != ((void*)0)) {
        quicly_maxsender_request_transmit(&stream->_send_aux.max_stream_data_sender);
        if (should_send_max_stream_data(stream))
            sched_stream_control(stream);
    }

    return 0;
}
