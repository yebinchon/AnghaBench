
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct st_quicly_handle_payload_state_t {int end; int src; } ;
struct TYPE_13__ {int offset; } ;
typedef TYPE_4__ quicly_data_blocked_frame_t ;
struct TYPE_10__ {scalar_t__ send_ack_at; } ;
struct TYPE_11__ {int sender; } ;
struct TYPE_12__ {TYPE_2__ max_data; } ;
struct TYPE_14__ {TYPE_1__ egress; TYPE_3__ ingress; } ;
typedef TYPE_5__ quicly_conn_t ;


 int DATA_BLOCKED_RECEIVE ;
 int QUICLY_PROBE (int ,TYPE_5__*,int ,int ) ;
 int probe_now () ;
 int quicly_decode_data_blocked_frame (int *,int ,TYPE_4__*) ;
 int quicly_maxsender_request_transmit (int *) ;
 scalar_t__ should_send_max_data (TYPE_5__*) ;

__attribute__((used)) static int handle_data_blocked_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_data_blocked_frame_t frame;
    int ret;

    if ((ret = quicly_decode_data_blocked_frame(&state->src, state->end, &frame)) != 0)
        return ret;

    QUICLY_PROBE(DATA_BLOCKED_RECEIVE, conn, probe_now(), frame.offset);

    quicly_maxsender_request_transmit(&conn->ingress.max_data.sender);
    if (should_send_max_data(conn))
        conn->egress.send_ack_at = 0;

    return 0;
}
