
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int timeout_entry; } ;
struct TYPE_11__ {TYPE_3__* ctx; } ;
struct TYPE_13__ {scalar_t__ state; TYPE_5__ _write; TYPE_4__ super; TYPE_2__* sock; } ;
typedef TYPE_6__ h2o_http2_conn_t ;
struct TYPE_10__ {int loop; } ;
struct TYPE_8__ {int * write; } ;
struct TYPE_9__ {TYPE_1__ _cb; } ;


 scalar_t__ H2O_HTTP2_CONN_STATE_IS_CLOSING ;
 int assert (int) ;
 int h2o_timer_is_linked (int *) ;
 int h2o_timer_link (int ,int ,int *) ;

__attribute__((used)) static void request_gathered_write(h2o_http2_conn_t *conn)
{
    assert(conn->state < H2O_HTTP2_CONN_STATE_IS_CLOSING);
    if (conn->sock->_cb.write == ((void*)0) && !h2o_timer_is_linked(&conn->_write.timeout_entry)) {
        h2o_timer_link(conn->super.ctx->loop, 0, &conn->_write.timeout_entry);
    }
}
