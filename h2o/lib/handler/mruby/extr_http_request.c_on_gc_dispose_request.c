
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int input_stream; int request; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_1__ refs; } ;
typedef int mrb_state ;


 int dispose_context (struct st_h2o_mruby_http_request_context_t*) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;

__attribute__((used)) static void on_gc_dispose_request(mrb_state *mrb, void *_ctx)
{
    struct st_h2o_mruby_http_request_context_t *ctx = _ctx;
    if (ctx == ((void*)0))
        return;
    ctx->refs.request = mrb_nil_value();
    if (mrb_nil_p(ctx->refs.input_stream))
        dispose_context(ctx);
}
