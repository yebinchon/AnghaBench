
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int has_content; TYPE_3__* after_closed; } ;
struct st_h2o_mruby_http_request_context_t {int ctx; int receiver; int * shortcut; TYPE_1__ resp; int * client; } ;
typedef int mrb_value ;
struct TYPE_6__ {TYPE_3__** buf; struct st_h2o_mruby_http_request_context_t* data; } ;
typedef TYPE_2__ h2o_httpclient_t ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef TYPE_3__ h2o_buffer_t ;


 int build_chunk (struct st_h2o_mruby_http_request_context_t*) ;
 int detach_receiver (struct st_h2o_mruby_http_request_context_t*) ;
 int h2o_mruby_run_fiber (int ,int ,int ,int *) ;
 int mrb_nil_p (int ) ;
 int on_shortcut_notify (int *) ;

__attribute__((used)) static int do_on_body(h2o_httpclient_t *client, const char *errstr)
{
    struct st_h2o_mruby_http_request_context_t *ctx = client->data;

    if (errstr != ((void*)0)) {
        h2o_buffer_t *tmp = ctx->resp.after_closed;
        ctx->resp.after_closed = *client->buf;
        *client->buf = tmp;
        ctx->client = ((void*)0);
        ctx->resp.has_content = 1;
    } else if ((*client->buf)->size != 0) {
        ctx->resp.has_content = 1;
    }

    if (ctx->resp.has_content) {
        if (ctx->shortcut != ((void*)0)) {
            on_shortcut_notify(ctx->shortcut);
        } else if (!mrb_nil_p(ctx->receiver)) {
            mrb_value chunk = build_chunk(ctx);
            h2o_mruby_run_fiber(ctx->ctx, detach_receiver(ctx), chunk, ((void*)0));
        }
    }

    return 0;
}
