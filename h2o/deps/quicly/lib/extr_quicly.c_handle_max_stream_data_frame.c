
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct st_quicly_handle_payload_state_t {int end; int src; } ;
struct TYPE_8__ {scalar_t__ sender_state; } ;
struct TYPE_9__ {scalar_t__ max_stream_data; TYPE_1__ rst; } ;
struct TYPE_10__ {TYPE_2__ _send_aux; } ;
typedef TYPE_3__ quicly_stream_t ;
struct TYPE_11__ {scalar_t__ max_stream_data; int stream_id; } ;
typedef TYPE_4__ quicly_max_stream_data_frame_t ;
typedef int quicly_conn_t ;


 int MAX_STREAM_DATA_RECEIVE ;
 int QUICLY_PROBE (int ,int *,int ,int ,scalar_t__) ;
 scalar_t__ QUICLY_SENDER_STATE_NONE ;
 int QUICLY_TRANSPORT_ERROR_FRAME_ENCODING ;
 int probe_now () ;
 int quicly_decode_max_stream_data_frame (int *,int ,TYPE_4__*) ;
 TYPE_3__* quicly_get_stream (int *,int ) ;
 int quicly_is_client (int *) ;
 int quicly_stream_has_send_side (int ,int ) ;
 int resched_stream_data (TYPE_3__*) ;

__attribute__((used)) static int handle_max_stream_data_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_max_stream_data_frame_t frame;
    quicly_stream_t *stream;
    int ret;

    if ((ret = quicly_decode_max_stream_data_frame(&state->src, state->end, &frame)) != 0)
        return ret;

    QUICLY_PROBE(MAX_STREAM_DATA_RECEIVE, conn, probe_now(), frame.stream_id, frame.max_stream_data);

    if (!quicly_stream_has_send_side(quicly_is_client(conn), frame.stream_id))
        return QUICLY_TRANSPORT_ERROR_FRAME_ENCODING;

    if ((stream = quicly_get_stream(conn, frame.stream_id)) == ((void*)0))
        return 0;

    if (frame.max_stream_data < stream->_send_aux.max_stream_data)
        return 0;
    stream->_send_aux.max_stream_data = frame.max_stream_data;

    if (stream->_send_aux.rst.sender_state == QUICLY_SENDER_STATE_NONE)
        resched_stream_data(stream);

    return 0;
}
