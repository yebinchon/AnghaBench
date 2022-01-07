
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct st_quicly_max_streams_t {int blocked_sender; } ;
typedef int quicly_sentmap_event_t ;
struct TYPE_9__ {int args; scalar_t__ uni; } ;
struct TYPE_10__ {TYPE_1__ streams_blocked; } ;
struct TYPE_13__ {TYPE_2__ data; } ;
typedef TYPE_5__ quicly_sent_t ;
typedef int quicly_sent_packet_t ;
struct TYPE_11__ {struct st_quicly_max_streams_t bidi; struct st_quicly_max_streams_t uni; } ;
struct TYPE_12__ {TYPE_3__ max_streams; } ;
struct TYPE_14__ {TYPE_4__ egress; } ;
typedef TYPE_6__ quicly_conn_t ;




 int quicly_maxsender_acked (int *,int *) ;
 int quicly_maxsender_lost (int *,int *) ;

__attribute__((used)) static int on_ack_streams_blocked(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                                  quicly_sentmap_event_t event)
{
    struct st_quicly_max_streams_t *m =
        sent->data.streams_blocked.uni ? &conn->egress.max_streams.uni : &conn->egress.max_streams.bidi;

    switch (event) {
    case 129:
        quicly_maxsender_acked(&m->blocked_sender, &sent->data.streams_blocked.args);
        break;
    case 128:
        quicly_maxsender_lost(&m->blocked_sender, &sent->data.streams_blocked.args);
        break;
    default:
        break;
    }

    return 0;
}
