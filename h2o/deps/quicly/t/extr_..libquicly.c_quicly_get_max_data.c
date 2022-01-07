
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int bytes_consumed; } ;
struct TYPE_10__ {TYPE_3__ max_data; } ;
struct TYPE_7__ {int sent; int permitted; } ;
struct TYPE_8__ {TYPE_1__ max_data; } ;
struct TYPE_11__ {TYPE_4__ ingress; TYPE_2__ egress; } ;
typedef TYPE_5__ quicly_conn_t ;



void quicly_get_max_data(quicly_conn_t *conn, uint64_t *send_permitted, uint64_t *sent, uint64_t *consumed)
{
    if (send_permitted != ((void*)0))
        *send_permitted = conn->egress.max_data.permitted;
    if (sent != ((void*)0))
        *sent = conn->egress.max_data.sent;
    if (consumed != ((void*)0))
        *consumed = conn->ingress.max_data.bytes_consumed;
}
