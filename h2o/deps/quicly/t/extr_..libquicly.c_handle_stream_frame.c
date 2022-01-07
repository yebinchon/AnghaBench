
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_quicly_handle_payload_state_t {int end; int src; int frame_type; } ;
typedef int quicly_stream_t ;
struct TYPE_5__ {int len; } ;
struct TYPE_6__ {int stream_id; scalar_t__ is_fin; TYPE_1__ data; int offset; } ;
typedef TYPE_2__ quicly_stream_frame_t ;
typedef int quicly_conn_t ;


 int QUICLY_PROBE (int ,int *,int ,int ,int ,int ,int) ;
 int QUICTRACE_RECV_STREAM ;
 int apply_stream_frame (int *,TYPE_2__*) ;
 int get_stream_or_open_if_new (int *,int ,int **) ;
 int probe_now () ;
 int quicly_decode_stream_frame (int ,int *,int ,TYPE_2__*) ;

__attribute__((used)) static int handle_stream_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_stream_frame_t frame;
    quicly_stream_t *stream;
    int ret;

    if ((ret = quicly_decode_stream_frame(state->frame_type, &state->src, state->end, &frame)) != 0)
        return ret;
    QUICLY_PROBE(QUICTRACE_RECV_STREAM, conn, probe_now(), frame.stream_id, frame.offset, frame.data.len, (int)frame.is_fin);
    if ((ret = get_stream_or_open_if_new(conn, frame.stream_id, &stream)) != 0 || stream == ((void*)0))
        return ret;
    return apply_stream_frame(stream, &frame);
}
