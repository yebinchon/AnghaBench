
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


typedef int quicly_sentmap_event_t ;
struct TYPE_9__ {int args; scalar_t__ uni; } ;
struct TYPE_10__ {TYPE_1__ max_streams; } ;
struct TYPE_13__ {TYPE_2__ data; } ;
typedef TYPE_5__ quicly_sent_t ;
typedef int quicly_sent_packet_t ;
typedef int quicly_maxsender_t ;
struct TYPE_11__ {int * bidi; int * uni; } ;
struct TYPE_12__ {TYPE_3__ max_streams; } ;
struct TYPE_14__ {TYPE_4__ ingress; } ;
typedef TYPE_6__ quicly_conn_t ;




 int assert (int ) ;
 int quicly_maxsender_acked (int *,int *) ;
 int quicly_maxsender_lost (int *,int *) ;

__attribute__((used)) static int on_ack_max_streams(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                              quicly_sentmap_event_t event)
{
    quicly_maxsender_t *maxsender = sent->data.max_streams.uni ? conn->ingress.max_streams.uni : conn->ingress.max_streams.bidi;
    assert(maxsender != ((void*)0));

    switch (event) {
    case 129:
        quicly_maxsender_acked(maxsender, &sent->data.max_streams.args);
        break;
    case 128:
        quicly_maxsender_lost(maxsender, &sent->data.max_streams.args);
        break;
    default:
        break;
    }

    return 0;
}
