
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int quicly_sentmap_iter_t ;
struct TYPE_10__ {scalar_t__ packet_number; scalar_t__ bytes_in_flight; } ;
typedef TYPE_2__ quicly_sent_packet_t ;
struct TYPE_12__ {scalar_t__ bytes_in_flight; } ;
struct TYPE_9__ {scalar_t__ max_lost_pn; TYPE_4__ sentmap; } ;
struct TYPE_11__ {TYPE_1__ egress; } ;
typedef TYPE_3__ quicly_conn_t ;


 int QUICLY_SENTMAP_EVENT_LOST ;
 scalar_t__ UINT64_MAX ;
 int assert (int) ;
 int init_acks_iter (TYPE_3__*,int *) ;
 TYPE_2__* quicly_sentmap_get (int *) ;
 int quicly_sentmap_skip (int *) ;
 int quicly_sentmap_update (TYPE_4__*,int *,int ,TYPE_3__*) ;

__attribute__((used)) static int mark_packets_as_lost(quicly_conn_t *conn, size_t count)
{
    quicly_sentmap_iter_t iter;
    int ret;

    assert(count != 0);

    init_acks_iter(conn, &iter);

    while (quicly_sentmap_get(&iter)->packet_number < conn->egress.max_lost_pn)
        quicly_sentmap_skip(&iter);

    do {
        const quicly_sent_packet_t *sent = quicly_sentmap_get(&iter);
        uint64_t pn;
        if ((pn = sent->packet_number) == UINT64_MAX) {
            assert(conn->egress.sentmap.bytes_in_flight == 0);
            break;
        }
        if (sent->bytes_in_flight != 0)
            --count;
        if ((ret = quicly_sentmap_update(&conn->egress.sentmap, &iter, QUICLY_SENTMAP_EVENT_LOST, conn)) != 0)
            return ret;
        conn->egress.max_lost_pn = pn + 1;
    } while (count != 0);

    return 0;
}
