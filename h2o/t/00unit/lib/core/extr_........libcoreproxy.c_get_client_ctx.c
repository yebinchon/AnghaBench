
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* conn; TYPE_5__* overrides; } ;
typedef TYPE_4__ h2o_req_t ;
struct TYPE_11__ {int * client_ctx; } ;
typedef TYPE_5__ h2o_req_overrides_t ;
typedef int h2o_httpclient_ctx_t ;
struct TYPE_9__ {TYPE_2__* ctx; } ;
struct TYPE_7__ {int client_ctx; } ;
struct TYPE_8__ {TYPE_1__ proxy; } ;



__attribute__((used)) static h2o_httpclient_ctx_t *get_client_ctx(h2o_req_t *req)
{
    h2o_req_overrides_t *overrides = req->overrides;
    if (overrides != ((void*)0) && overrides->client_ctx != ((void*)0))
        return overrides->client_ctx;
    return &req->conn->ctx->proxy.client_ctx;
}
