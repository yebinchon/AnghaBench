
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_quicly_handle_payload_state_t {int end; int src; } ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ quicly_path_challenge_frame_t ;
typedef int quicly_conn_t ;


 int quicly_decode_path_challenge_frame (int *,int ,TYPE_1__*) ;
 int schedule_path_challenge (int *,int,int ) ;

__attribute__((used)) static int handle_path_challenge_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_path_challenge_frame_t frame;
    int ret;

    if ((ret = quicly_decode_path_challenge_frame(&state->src, state->end, &frame)) != 0)
        return ret;
    return schedule_path_challenge(conn, 1, frame.data);
}
