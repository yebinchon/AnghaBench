
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_quicly_handle_payload_state_t {int end; int src; } ;
struct TYPE_5__ {int len; int base; } ;
struct TYPE_4__ {TYPE_3__ reason_phrase; int frame_type; int error_code; } ;
typedef TYPE_1__ quicly_transport_close_frame_t ;
typedef int quicly_conn_t ;


 int QUICLY_ERROR_FROM_TRANSPORT_ERROR_CODE (int ) ;
 int QUICLY_PROBE (int ,int *,int ,int ,int ,int ) ;
 int QUICLY_PROBE_ESCAPE_UNSAFE_STRING (int ,int ) ;
 int TRANSPORT_CLOSE_RECEIVE ;
 int handle_close (int *,int ,int ,TYPE_3__) ;
 int probe_now () ;
 int quicly_decode_transport_close_frame (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int handle_transport_close_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_transport_close_frame_t frame;
    int ret;

    if ((ret = quicly_decode_transport_close_frame(&state->src, state->end, &frame)) != 0)
        return ret;

    QUICLY_PROBE(TRANSPORT_CLOSE_RECEIVE, conn, probe_now(), frame.error_code, frame.frame_type,
                 QUICLY_PROBE_ESCAPE_UNSAFE_STRING(frame.reason_phrase.base, frame.reason_phrase.len));
    return handle_close(conn, QUICLY_ERROR_FROM_TRANSPORT_ERROR_CODE(frame.error_code), frame.frame_type, frame.reason_phrase);
}
