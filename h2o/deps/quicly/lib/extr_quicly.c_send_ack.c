
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_15__ {scalar_t__ num_ranges; int * ranges; } ;
struct st_quicly_pn_space_t {scalar_t__ largest_pn_received_at; scalar_t__ unacked_count; TYPE_10__ ack_queue; } ;
struct TYPE_17__ {int range; } ;
struct TYPE_18__ {TYPE_2__ ack; } ;
struct TYPE_19__ {TYPE_3__ data; } ;
typedef TYPE_4__ quicly_sent_t ;
struct TYPE_20__ {int * dst; int dst_end; } ;
typedef TYPE_5__ quicly_send_context_t ;
struct TYPE_16__ {int sentmap; } ;
struct TYPE_21__ {TYPE_1__ egress; } ;
typedef TYPE_6__ quicly_conn_t ;


 int PTLS_ERROR_NO_MEMORY ;
 int QUICLY_ACK_FRAME_CAPACITY ;
 scalar_t__ QUICLY_LOCAL_ACK_DELAY_EXPONENT ;
 int allocate_frame (TYPE_6__*,TYPE_5__*,int ) ;
 int commit_send_packet (TYPE_6__*,TYPE_5__*,int ) ;
 scalar_t__ now ;
 int on_ack_ack ;
 int * quicly_encode_ack_frame (int *,int ,TYPE_10__*,scalar_t__) ;
 TYPE_4__* quicly_sentmap_allocate (int *,int ) ;

__attribute__((used)) static int send_ack(quicly_conn_t *conn, struct st_quicly_pn_space_t *space, quicly_send_context_t *s)
{
    uint64_t ack_delay;
    int ret;

    if (space->ack_queue.num_ranges == 0)
        return 0;


    if (space->largest_pn_received_at < now) {


        ack_delay = ((now - space->largest_pn_received_at) * 1000) >> QUICLY_LOCAL_ACK_DELAY_EXPONENT;
    } else {
        ack_delay = 0;
    }


Emit:
    if ((ret = allocate_frame(conn, s, QUICLY_ACK_FRAME_CAPACITY)) != 0)
        return ret;
    uint8_t *new_dst = quicly_encode_ack_frame(s->dst, s->dst_end, &space->ack_queue, ack_delay);
    if (new_dst == ((void*)0)) {

        if ((ret = commit_send_packet(conn, s, 0)) != 0)
            return ret;
        goto Emit;
    }
    s->dst = new_dst;

    {
        size_t i;
        for (i = 0; i != space->ack_queue.num_ranges; ++i) {
            quicly_sent_t *sent;
            if ((sent = quicly_sentmap_allocate(&conn->egress.sentmap, on_ack_ack)) == ((void*)0))
                return PTLS_ERROR_NO_MEMORY;
            sent->data.ack.range = space->ack_queue.ranges[i];
        }
    }

    space->unacked_count = 0;

    return ret;
}
