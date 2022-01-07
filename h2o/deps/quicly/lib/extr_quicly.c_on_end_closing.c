
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ quicly_sentmap_event_t ;
typedef int quicly_sent_t ;
typedef int quicly_sent_packet_t ;
typedef int quicly_conn_t ;


 scalar_t__ QUICLY_SENTMAP_EVENT_ACKED ;
 int assert (int) ;

__attribute__((used)) static int on_end_closing(quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                          quicly_sentmap_event_t event)
{

    assert(event != QUICLY_SENTMAP_EVENT_ACKED);
    return 0;
}
