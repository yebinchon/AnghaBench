
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int quicly_stream_id_t ;
struct TYPE_8__ {int max_committed; } ;
typedef TYPE_3__ quicly_maxsender_t ;
struct TYPE_6__ {TYPE_3__* bidi; TYPE_3__* uni; } ;
struct TYPE_7__ {TYPE_1__ max_streams; } ;
struct TYPE_9__ {TYPE_2__ ingress; } ;
typedef TYPE_4__ quicly_conn_t ;



quicly_stream_id_t quicly_get_ingress_max_streams(quicly_conn_t *conn, int uni)
{
    quicly_maxsender_t *maxsender = uni ? conn->ingress.max_streams.uni : conn->ingress.max_streams.bidi;
    return maxsender->max_committed;
}
