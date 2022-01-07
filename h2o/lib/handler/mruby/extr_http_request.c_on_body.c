
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int input_stream; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_2__* ctx; TYPE_3__ refs; } ;
struct TYPE_10__ {struct st_h2o_mruby_http_request_context_t* data; } ;
typedef TYPE_4__ h2o_httpclient_t ;
struct TYPE_8__ {TYPE_1__* shared; } ;
struct TYPE_7__ {int mrb; } ;


 int do_on_body (TYPE_4__*,char const*) ;
 int mrb_gc_arena_restore (int ,int) ;
 int mrb_gc_arena_save (int ) ;
 int mrb_gc_protect (int ,int ) ;
 scalar_t__ try_dispose_context (struct st_h2o_mruby_http_request_context_t*) ;

__attribute__((used)) static int on_body(h2o_httpclient_t *client, const char *errstr)
{
    struct st_h2o_mruby_http_request_context_t *ctx = client->data;
    if (try_dispose_context(ctx))
        return -1;

    int gc_arena = mrb_gc_arena_save(ctx->ctx->shared->mrb);
    mrb_gc_protect(ctx->ctx->shared->mrb, ctx->refs.input_stream);

    int ret = do_on_body(client, errstr);

    mrb_gc_arena_restore(ctx->ctx->shared->mrb, gc_arena);

    return ret;
}
