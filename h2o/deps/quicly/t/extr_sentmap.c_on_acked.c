
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_quicly_conn_t {int dummy; } ;
typedef scalar_t__ quicly_sentmap_event_t ;
typedef int quicly_sent_t ;
typedef int quicly_sent_packet_t ;


 scalar_t__ QUICLY_SENTMAP_EVENT_ACKED ;
 int on_acked_ackcnt ;
 int on_acked_callcnt ;

__attribute__((used)) static int on_acked(struct st_quicly_conn_t *conn, const quicly_sent_packet_t *packet, quicly_sent_t *sent,
                    quicly_sentmap_event_t event)
{
    ++on_acked_callcnt;
    if (event == QUICLY_SENTMAP_EVENT_ACKED)
        ++on_acked_ackcnt;
    return 0;
}
