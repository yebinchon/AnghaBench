
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_packets; scalar_t__ max_packets; } ;
typedef TYPE_1__ quicly_send_context_t ;
typedef int quicly_conn_t ;



int quicly_can_send_stream_data(quicly_conn_t *conn, quicly_send_context_t *s)
{
    return s->num_packets < s->max_packets;
}
