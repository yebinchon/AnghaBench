
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_quicly_handle_payload_state_t {int end; int src; } ;
typedef int quicly_conn_t ;
struct TYPE_5__ {int len; int base; } ;
struct TYPE_4__ {TYPE_3__ reason_phrase; int error_code; } ;
typedef TYPE_1__ quicly_application_close_frame_t ;


 int APPLICATION_CLOSE_RECEIVE ;
 int QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE (int ) ;
 int QUICLY_PROBE (int ,int *,int ,int ,int ) ;
 int QUICLY_PROBE_ESCAPE_UNSAFE_STRING (int ,int ) ;
 int UINT64_MAX ;
 int handle_close (int *,int ,int ,TYPE_3__) ;
 int probe_now () ;
 int quicly_decode_application_close_frame (int *,int ,TYPE_1__*) ;

__attribute__((used)) static int handle_application_close_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_application_close_frame_t frame;
    int ret;

    if ((ret = quicly_decode_application_close_frame(&state->src, state->end, &frame)) != 0)
        return ret;

    QUICLY_PROBE(APPLICATION_CLOSE_RECEIVE, conn, probe_now(), frame.error_code,
                 QUICLY_PROBE_ESCAPE_UNSAFE_STRING(frame.reason_phrase.base, frame.reason_phrase.len));
    return handle_close(conn, QUICLY_ERROR_FROM_APPLICATION_ERROR_CODE(frame.error_code), UINT64_MAX, frame.reason_phrase);
}
