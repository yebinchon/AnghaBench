
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int flows; } ;
struct TYPE_8__ {int generation; } ;
struct TYPE_9__ {TYPE_2__ new_token; } ;
struct TYPE_7__ {scalar_t__ state; } ;
struct TYPE_11__ {TYPE_4__ pending; TYPE_3__ egress; TYPE_1__ super; } ;
typedef TYPE_5__ quicly_conn_t ;


 int QUICLY_PENDING_FLOW_NEW_TOKEN_BIT ;
 scalar_t__ QUICLY_STATE_CONNECTED ;

int quicly_send_resumption_token(quicly_conn_t *conn)
{
    if (conn->super.state <= QUICLY_STATE_CONNECTED) {
        ++conn->egress.new_token.generation;
        conn->pending.flows |= QUICLY_PENDING_FLOW_NEW_TOKEN_BIT;
    }
    return 0;
}
