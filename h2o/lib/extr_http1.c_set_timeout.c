
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int * cb; } ;
struct TYPE_6__ {TYPE_1__* ctx; } ;
struct st_h2o_http1_conn_t {TYPE_3__ _timeout_entry; TYPE_2__ super; } ;
typedef int * h2o_timer_cb ;
struct TYPE_5__ {int loop; } ;


 int h2o_timer_link (int ,int ,TYPE_3__*) ;
 int h2o_timer_unlink (TYPE_3__*) ;

__attribute__((used)) static void set_timeout(struct st_h2o_http1_conn_t *conn, uint64_t timeout, h2o_timer_cb cb)
{
    if (conn->_timeout_entry.cb != ((void*)0))
        h2o_timer_unlink(&conn->_timeout_entry);
    conn->_timeout_entry.cb = cb;
    if (cb != ((void*)0))
        h2o_timer_link(conn->super.ctx->loop, timeout, &conn->_timeout_entry);
}
