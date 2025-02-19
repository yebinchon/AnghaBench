
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int request; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_3__* ctx; TYPE_1__ refs; } ;
typedef int h2o_url_t ;
typedef int h2o_iovec_t ;
struct TYPE_10__ {struct st_h2o_mruby_http_request_context_t* data; } ;
typedef TYPE_4__ h2o_httpclient_t ;
typedef int h2o_httpclient_properties_t ;
typedef int h2o_httpclient_proceed_req_cb ;
typedef int * h2o_httpclient_head_cb ;
typedef int h2o_header_t ;
struct TYPE_9__ {TYPE_2__* shared; } ;
struct TYPE_8__ {int mrb; } ;


 int * do_on_connect (TYPE_4__*,char const*,int *,int *,int const**,size_t*,int *,int *,int *,int *) ;
 int mrb_gc_arena_restore (int ,int) ;
 int mrb_gc_arena_save (int ) ;
 int mrb_gc_protect (int ,int ) ;
 scalar_t__ try_dispose_context (struct st_h2o_mruby_http_request_context_t*) ;

__attribute__((used)) static h2o_httpclient_head_cb on_connect(h2o_httpclient_t *client, const char *errstr, h2o_iovec_t *method, h2o_url_t *url,
                                         const h2o_header_t **headers, size_t *num_headers, h2o_iovec_t *body,
                                         h2o_httpclient_proceed_req_cb *proceed_req_cb, h2o_httpclient_properties_t *props,
                                         h2o_url_t *origin)
{
    struct st_h2o_mruby_http_request_context_t *ctx = client->data;
    if (try_dispose_context(ctx))
        return ((void*)0);

    int gc_arena = mrb_gc_arena_save(ctx->ctx->shared->mrb);
    mrb_gc_protect(ctx->ctx->shared->mrb, ctx->refs.request);

    h2o_httpclient_head_cb cb =
        do_on_connect(client, errstr, method, url, headers, num_headers, body, proceed_req_cb, props, origin);

    mrb_gc_arena_restore(ctx->ctx->shared->mrb, gc_arena);

    return cb;
}
