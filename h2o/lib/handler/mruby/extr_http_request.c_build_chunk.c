
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int has_content; TYPE_5__* after_closed; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_4__ resp; TYPE_3__* ctx; TYPE_1__* client; } ;
typedef int mrb_value ;
struct TYPE_10__ {scalar_t__ size; int bytes; } ;
struct TYPE_8__ {TYPE_2__* shared; } ;
struct TYPE_7__ {int mrb; } ;
struct TYPE_6__ {TYPE_5__** buf; } ;


 int assert (int) ;
 int h2o_buffer_consume (TYPE_5__**,scalar_t__) ;
 int h2o_mruby_new_str (int ,int ,scalar_t__) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value build_chunk(struct st_h2o_mruby_http_request_context_t *ctx)
{
    mrb_value chunk;

    assert(ctx->resp.has_content);

    if (ctx->client != ((void*)0)) {
        assert((*ctx->client->buf)->size != 0);
        chunk = h2o_mruby_new_str(ctx->ctx->shared->mrb, (*ctx->client->buf)->bytes, (*ctx->client->buf)->size);
        h2o_buffer_consume(ctx->client->buf, (*ctx->client->buf)->size);
        ctx->resp.has_content = 0;
    } else {
        if (ctx->resp.after_closed->size == 0) {
            chunk = mrb_nil_value();
        } else {
            chunk = h2o_mruby_new_str(ctx->ctx->shared->mrb, ctx->resp.after_closed->bytes, ctx->resp.after_closed->size);
            h2o_buffer_consume(&ctx->resp.after_closed, ctx->resp.after_closed->size);
        }

    }

    return chunk;
}
