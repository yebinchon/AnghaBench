
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int request; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_2__* ctx; TYPE_1__ refs; } ;
typedef int h2o_iovec_t ;
struct TYPE_10__ {struct st_h2o_mruby_http_request_context_t* data; } ;
typedef TYPE_4__ h2o_httpclient_t ;
typedef int * h2o_httpclient_body_cb ;
typedef int h2o_header_t ;
struct TYPE_9__ {int mrb; } ;
struct TYPE_8__ {TYPE_3__* shared; } ;


 int * do_on_head (TYPE_4__*,char const*,int,int,int ,int *,size_t,int) ;
 int mrb_gc_arena_restore (int ,int) ;
 int mrb_gc_arena_save (int ) ;
 int mrb_gc_protect (int ,int ) ;
 scalar_t__ try_dispose_context (struct st_h2o_mruby_http_request_context_t*) ;

__attribute__((used)) static h2o_httpclient_body_cb on_head(h2o_httpclient_t *client, const char *errstr, int version, int status, h2o_iovec_t msg,
                                      h2o_header_t *headers, size_t num_headers, int header_requires_dup)
{
    struct st_h2o_mruby_http_request_context_t *ctx = client->data;
    if (try_dispose_context(ctx))
        return ((void*)0);

    int gc_arena = mrb_gc_arena_save(ctx->ctx->shared->mrb);
    mrb_gc_protect(ctx->ctx->shared->mrb, ctx->refs.request);

    h2o_httpclient_body_cb cb = do_on_head(client, errstr, version, status, msg, headers, num_headers, header_requires_dup);

    mrb_gc_arena_restore(ctx->ctx->shared->mrb, gc_arena);

    return cb;
}
