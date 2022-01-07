
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ expire_at; } ;
struct TYPE_8__ {TYPE_3__ _timeout; TYPE_1__* ctx; int quic; } ;
typedef TYPE_2__ h2o_http3_conn_t ;
struct TYPE_7__ {int loop; } ;


 scalar_t__ h2o_now (int ) ;
 scalar_t__ h2o_timer_is_linked (TYPE_3__*) ;
 int h2o_timer_link (int ,scalar_t__,TYPE_3__*) ;
 int h2o_timer_unlink (TYPE_3__*) ;
 scalar_t__ quicly_get_first_timeout (int ) ;

void h2o_http3_schedule_timer(h2o_http3_conn_t *conn)
{
    int64_t timeout = quicly_get_first_timeout(conn->quic);
    if (h2o_timer_is_linked(&conn->_timeout)) {

        if (timeout == conn->_timeout.expire_at)
            return;

        h2o_timer_unlink(&conn->_timeout);
    }
    uint64_t now = h2o_now(conn->ctx->loop), delay = now < timeout ? timeout - now : 0;
    h2o_timer_link(conn->ctx->loop, delay, &conn->_timeout);
}
