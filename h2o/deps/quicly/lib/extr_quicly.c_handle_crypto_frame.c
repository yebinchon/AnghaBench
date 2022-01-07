
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_quicly_handle_payload_state_t {scalar_t__ epoch; int end; int src; } ;
typedef int quicly_stream_t ;
typedef int quicly_stream_id_t ;
typedef int quicly_stream_frame_t ;
typedef int quicly_conn_t ;


 int apply_stream_frame (int *,int *) ;
 int assert (int ) ;
 int quicly_decode_crypto_frame (int *,int ,int *) ;
 int * quicly_get_stream (int *,int ) ;

__attribute__((used)) static int handle_crypto_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_stream_frame_t frame;
    quicly_stream_t *stream;
    int ret;

    if ((ret = quicly_decode_crypto_frame(&state->src, state->end, &frame)) != 0)
        return ret;
    stream = quicly_get_stream(conn, -(quicly_stream_id_t)(1 + state->epoch));
    assert(stream != ((void*)0));
    return apply_stream_frame(stream, &frame);
}
