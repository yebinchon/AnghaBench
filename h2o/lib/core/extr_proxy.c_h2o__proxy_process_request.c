
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct rp_generator_t {int client; } ;
typedef int h2o_url_t ;
struct TYPE_12__ {int pool; int authority; int scheme; TYPE_3__* conn; TYPE_5__* overrides; } ;
typedef TYPE_4__ h2o_req_t ;
struct TYPE_13__ {int proxy_preserve_host; int * connpool; } ;
typedef TYPE_5__ h2o_req_overrides_t ;
typedef int h2o_httpclient_ctx_t ;
typedef int h2o_httpclient_connection_pool_t ;
struct TYPE_11__ {TYPE_2__* ctx; } ;
struct TYPE_9__ {int connpool; } ;
struct TYPE_10__ {TYPE_1__ proxy; } ;


 int H2O_STRLIT (char*) ;
 int * get_client_ctx (TYPE_4__*) ;
 int h2o_httpclient_connect (int *,int *,struct rp_generator_t*,int *,int *,int *,int ) ;
 int h2o_iovec_init (int ) ;
 int h2o_url_init (int *,int ,int ,int ) ;
 int on_connect ;
 struct rp_generator_t* proxy_send_prepare (TYPE_4__*) ;

void h2o__proxy_process_request(h2o_req_t *req)
{
    h2o_req_overrides_t *overrides = req->overrides;
    h2o_httpclient_ctx_t *client_ctx = get_client_ctx(req);
    h2o_url_t target_buf, *target = &target_buf;

    h2o_httpclient_connection_pool_t *connpool = &req->conn->ctx->proxy.connpool;
    if (overrides != ((void*)0) && overrides->connpool != ((void*)0)) {
        connpool = overrides->connpool;
        if (!overrides->proxy_preserve_host)
            target = ((void*)0);
    }
    if (target == &target_buf)
        h2o_url_init(&target_buf, req->scheme, req->authority, h2o_iovec_init(H2O_STRLIT("/")));

    struct rp_generator_t *self = proxy_send_prepare(req);
    h2o_httpclient_connect(&self->client, &req->pool, self, client_ctx, connpool, target, on_connect);
}
