
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct st_quicly_handle_payload_state_t {scalar_t__ frame_type; int end; int src; } ;
struct TYPE_11__ {int count; } ;
typedef TYPE_3__ quicly_max_streams_frame_t ;
struct TYPE_9__ {int bidi; int uni; } ;
struct TYPE_10__ {TYPE_1__ max_streams; } ;
struct TYPE_12__ {TYPE_2__ egress; } ;
typedef TYPE_4__ quicly_conn_t ;


 int MAX_STREAMS_RECEIVE ;
 scalar_t__ QUICLY_FRAME_TYPE_MAX_STREAMS_UNI ;
 int QUICLY_PROBE (int ,TYPE_4__*,int ,int ,int) ;
 int open_blocked_streams (TYPE_4__*,int) ;
 int probe_now () ;
 int quicly_decode_max_streams_frame (int *,int ,TYPE_3__*) ;
 int update_max_streams (int *,int ) ;

__attribute__((used)) static int handle_max_streams_frame(quicly_conn_t *conn, struct st_quicly_handle_payload_state_t *state)
{
    quicly_max_streams_frame_t frame;
    int uni = state->frame_type == QUICLY_FRAME_TYPE_MAX_STREAMS_UNI, ret;

    if ((ret = quicly_decode_max_streams_frame(&state->src, state->end, &frame)) != 0)
        return ret;

    QUICLY_PROBE(MAX_STREAMS_RECEIVE, conn, probe_now(), frame.count, uni);

    if ((ret = update_max_streams(uni ? &conn->egress.max_streams.uni : &conn->egress.max_streams.bidi, frame.count)) != 0)
        return ret;

    open_blocked_streams(conn, uni);

    return 0;
}
