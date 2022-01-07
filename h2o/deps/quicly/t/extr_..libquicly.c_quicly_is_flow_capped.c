
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sent; scalar_t__ permitted; } ;
struct TYPE_6__ {TYPE_1__ max_data; } ;
struct TYPE_7__ {TYPE_2__ egress; } ;
typedef TYPE_3__ quicly_conn_t ;



int quicly_is_flow_capped(quicly_conn_t *conn)
{
    return !(conn->egress.max_data.sent < conn->egress.max_data.permitted);
}
