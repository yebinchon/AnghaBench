
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_14__ {scalar_t__ num_ranges; } ;
struct st_quicly_pn_space_t {scalar_t__ unacked_count; int largest_pn_received_at; TYPE_10__ ack_queue; } ;
typedef scalar_t__ quicly_sentmap_event_t ;
struct TYPE_18__ {int end; int start; } ;
struct TYPE_19__ {TYPE_4__ range; } ;
struct TYPE_20__ {TYPE_5__ ack; } ;
struct TYPE_21__ {TYPE_6__ data; } ;
typedef TYPE_7__ quicly_sent_t ;
struct TYPE_22__ {int ack_epoch; } ;
typedef TYPE_8__ quicly_sent_packet_t ;
struct TYPE_23__ {TYPE_3__* application; TYPE_2__* handshake; TYPE_1__* initial; } ;
typedef TYPE_9__ quicly_conn_t ;
struct TYPE_17__ {struct st_quicly_pn_space_t super; } ;
struct TYPE_16__ {struct st_quicly_pn_space_t super; } ;
struct TYPE_15__ {struct st_quicly_pn_space_t super; } ;


 int INT64_MAX ;



 scalar_t__ QUICLY_SENTMAP_EVENT_ACKED ;
 int assert (int) ;
 int quicly_ranges_subtract (TYPE_10__*,int ,int ) ;

__attribute__((used)) static int on_ack_ack(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent, quicly_sentmap_event_t event)
{


    if (event == QUICLY_SENTMAP_EVENT_ACKED) {

        struct st_quicly_pn_space_t *space;
        switch (packet->ack_epoch) {
        case 128:
            space = &conn->initial->super;
            break;
        case 129:
            space = &conn->handshake->super;
            break;
        case 130:
            space = &conn->application->super;
            break;
        default:
            assert(!"FIXME");
        }
        if (space != ((void*)0)) {
            quicly_ranges_subtract(&space->ack_queue, sent->data.ack.range.start, sent->data.ack.range.end);
            if (space->ack_queue.num_ranges == 0) {
                space->largest_pn_received_at = INT64_MAX;
                space->unacked_count = 0;
            }
        }
    }

    return 0;
}
