
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_headers_early_hints_sender_t {int deferred_timeout_entry; int cmds; TYPE_3__* req; } ;
struct st_headers_early_hints_handler_t {int cmds; } ;
struct TYPE_7__ {TYPE_2__* conn; int pool; } ;
typedef TYPE_3__ h2o_req_t ;
typedef int h2o_handler_t ;
struct TYPE_6__ {TYPE_1__* ctx; } ;
struct TYPE_5__ {int loop; } ;


 struct st_headers_early_hints_sender_t* h2o_mem_alloc_shared (int *,int,int ) ;
 int h2o_timer_init (int *,int ) ;
 int h2o_timer_link (int ,int ,int *) ;
 int on_sender_deferred_timeout ;
 int on_sender_dispose ;

__attribute__((used)) static int on_req(h2o_handler_t *_handler, h2o_req_t *req)
{
    struct st_headers_early_hints_handler_t *handler = (void *)_handler;

    struct st_headers_early_hints_sender_t *sender = h2o_mem_alloc_shared(&req->pool, sizeof(*sender), on_sender_dispose);
    sender->req = req;
    sender->cmds = handler->cmds;
    h2o_timer_init(&sender->deferred_timeout_entry, on_sender_deferred_timeout);
    h2o_timer_link(req->conn->ctx->loop, 0, &sender->deferred_timeout_entry);

    return -1;
}
