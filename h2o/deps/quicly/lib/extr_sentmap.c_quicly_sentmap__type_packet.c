
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_quicly_conn_t {int dummy; } ;
typedef int quicly_sentmap_event_t ;
typedef int quicly_sent_t ;
typedef int quicly_sent_packet_t ;


 int QUICLY_TRANSPORT_ERROR_INTERNAL ;
 int assert (int) ;

int quicly_sentmap__type_packet(struct st_quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                                quicly_sentmap_event_t event)
{
    assert(!"quicly_sentmap__type_packet cannot be called");
    return QUICLY_TRANSPORT_ERROR_INTERNAL;
}
