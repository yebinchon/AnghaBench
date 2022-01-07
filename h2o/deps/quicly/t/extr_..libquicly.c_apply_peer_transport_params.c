
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int max_streams_bidi; int max_streams_uni; int max_data; } ;
struct TYPE_13__ {TYPE_4__ transport_params; } ;
struct TYPE_14__ {TYPE_5__ peer; } ;
struct TYPE_9__ {int bidi; int uni; } ;
struct TYPE_10__ {int permitted; } ;
struct TYPE_11__ {TYPE_1__ max_streams; TYPE_2__ max_data; } ;
struct TYPE_15__ {TYPE_6__ super; TYPE_3__ egress; } ;
typedef TYPE_7__ quicly_conn_t ;


 int update_max_streams (int *,int ) ;

__attribute__((used)) static int apply_peer_transport_params(quicly_conn_t *conn)
{
    int ret;

    conn->egress.max_data.permitted = conn->super.peer.transport_params.max_data;
    if ((ret = update_max_streams(&conn->egress.max_streams.uni, conn->super.peer.transport_params.max_streams_uni)) != 0)
        return ret;
    if ((ret = update_max_streams(&conn->egress.max_streams.bidi, conn->super.peer.transport_params.max_streams_bidi)) != 0)
        return ret;

    return 0;
}
