
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ctx; } ;
struct st_h2o_http3_server_conn_t {int timeout; TYPE_2__ super; } ;
struct TYPE_3__ {int loop; } ;


 int h2o_timer_is_linked (int *) ;
 int h2o_timer_link (int ,int ,int *) ;

__attribute__((used)) static void request_run_delayed(struct st_h2o_http3_server_conn_t *conn)
{
    if (!h2o_timer_is_linked(&conn->timeout))
        h2o_timer_link(conn->super.ctx->loop, 0, &conn->timeout);
}
