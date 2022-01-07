
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_deferred_request_action_t {int timeout; TYPE_3__* req; } ;
typedef int h2o_timer_cb ;
struct TYPE_7__ {TYPE_2__* conn; int pool; } ;
typedef TYPE_3__ h2o_req_t ;
struct TYPE_6__ {TYPE_1__* ctx; } ;
struct TYPE_5__ {int loop; } ;


 struct st_deferred_request_action_t* h2o_mem_alloc_shared (int *,size_t,int ) ;
 int h2o_timer_init (int *,int ) ;
 int h2o_timer_link (int ,int ,int *) ;
 int on_deferred_action_dispose ;

__attribute__((used)) static struct st_deferred_request_action_t *create_deferred_action(h2o_req_t *req, size_t sz, h2o_timer_cb cb)
{
    struct st_deferred_request_action_t *action = h2o_mem_alloc_shared(&req->pool, sz, on_deferred_action_dispose);
    action->req = req;
    h2o_timer_init(&action->timeout, cb);
    h2o_timer_link(req->conn->ctx->loop, 0, &action->timeout);
    return action;
}
