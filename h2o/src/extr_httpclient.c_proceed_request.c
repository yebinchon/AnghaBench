
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int cb; } ;
struct st_timeout_ctx {TYPE_4__ _timeout; TYPE_2__* client; } ;
typedef int h2o_send_state_t ;
struct TYPE_6__ {TYPE_1__* ctx; } ;
typedef TYPE_2__ h2o_httpclient_t ;
struct TYPE_5__ {int loop; } ;


 scalar_t__ cur_req_body_size ;
 int delay_interval_ms ;
 struct st_timeout_ctx* h2o_mem_alloc (int) ;
 int h2o_timer_link (int ,int ,TYPE_4__*) ;
 int memset (struct st_timeout_ctx*,int ,int) ;
 int timeout_cb ;

__attribute__((used)) static void proceed_request(h2o_httpclient_t *client, size_t written, h2o_send_state_t send_state)
{
    if (cur_req_body_size > 0) {
        struct st_timeout_ctx *tctx;
        tctx = h2o_mem_alloc(sizeof(*tctx));
        memset(tctx, 0, sizeof(*tctx));
        tctx->client = client;
        tctx->_timeout.cb = timeout_cb;
        h2o_timer_link(client->ctx->loop, delay_interval_ms, &tctx->_timeout);
    }
}
