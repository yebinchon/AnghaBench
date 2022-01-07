
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int has_transfer_encoding; int headers; int can_keepalive; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_1__ req; int pool; } ;
typedef int h2o_mruby_shared_context_t ;
struct TYPE_6__ {int len; int base; } ;
typedef TYPE_2__ h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 int h2o_add_header_by_str (int *,int *,int ,int ,int,int *,int ,int ) ;
 scalar_t__ h2o_lcstris (int ,int ,int ) ;

__attribute__((used)) static int flatten_request_header(h2o_mruby_shared_context_t *shared_ctx, h2o_iovec_t *name, h2o_iovec_t value, void *_ctx)
{
    struct st_h2o_mruby_http_request_context_t *ctx = _ctx;


    if (h2o_lcstris(name->base, name->len, H2O_STRLIT("content-length")) || h2o_lcstris(name->base, name->len, H2O_STRLIT("host")))
        return 0;

    if (h2o_lcstris(name->base, name->len, H2O_STRLIT("connection"))) {
        if (!ctx->req.can_keepalive)
            return 0;
    }


    if (h2o_lcstris(name->base, name->len, H2O_STRLIT("transfer-encoding")))
        ctx->req.has_transfer_encoding = 1;

    h2o_add_header_by_str(&ctx->pool, &ctx->req.headers, name->base, name->len, 1, ((void*)0), value.base, value.len);

    return 0;
}
