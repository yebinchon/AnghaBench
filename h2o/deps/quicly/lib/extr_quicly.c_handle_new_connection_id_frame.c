
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_quicly_handle_payload_state_t {int end; int src; } ;
typedef int quicly_new_connection_id_frame_t ;
typedef int quicly_conn_t ;


 int quicly_decode_new_connection_id_frame (int *,int ,int *) ;

__attribute__((used)) static int handle_new_connection_id_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_new_connection_id_frame_t frame;
    return quicly_decode_new_connection_id_frame(&state->src, state->end, &frame);
}
