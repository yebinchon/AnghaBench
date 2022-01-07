
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct st_quicly_handle_payload_state_t {int end; int src; } ;
struct TYPE_10__ {scalar_t__ max_data; } ;
typedef TYPE_3__ quicly_max_data_frame_t ;
struct TYPE_8__ {scalar_t__ permitted; } ;
struct TYPE_9__ {TYPE_1__ max_data; } ;
struct TYPE_11__ {TYPE_2__ egress; } ;
typedef TYPE_4__ quicly_conn_t ;


 int MAX_DATA_RECEIVE ;
 int QUICLY_PROBE (int ,TYPE_4__*,int ,scalar_t__) ;
 int probe_now () ;
 int quicly_decode_max_data_frame (int *,int ,TYPE_3__*) ;

__attribute__((used)) static int handle_max_data_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_max_data_frame_t frame;
    int ret;

    if ((ret = quicly_decode_max_data_frame(&state->src, state->end, &frame)) != 0)
        return ret;

    QUICLY_PROBE(MAX_DATA_RECEIVE, conn, probe_now(), frame.max_data);

    if (frame.max_data < conn->egress.max_data.permitted)
        return 0;
    conn->egress.max_data.permitted = frame.max_data;

    return 0;
}
