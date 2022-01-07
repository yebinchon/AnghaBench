
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_21__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_17__ ;


struct TYPE_27__ {int request; int input_stream; } ;
struct TYPE_25__ {scalar_t__ method_is_head; } ;
struct st_h2o_mruby_http_request_context_t {TYPE_17__* ctx; TYPE_4__ refs; int receiver; TYPE_2__ req; } ;
typedef int mrb_value ;
struct TYPE_28__ {int * exc; } ;
typedef TYPE_5__ mrb_state ;
struct TYPE_23__ {int len; int base; } ;
struct TYPE_29__ {TYPE_1__ value; TYPE_21__* name; } ;
typedef TYPE_6__ h2o_header_t ;
struct TYPE_26__ {int constants; TYPE_5__* mrb; } ;
struct TYPE_24__ {int len; int base; } ;
struct TYPE_22__ {TYPE_3__* shared; } ;


 int H2O_MRUBY_HTTP_EMPTY_INPUT_STREAM_CLASS ;
 int H2O_MRUBY_HTTP_INPUT_STREAM_CLASS ;
 int H2O_STRLIT (char*) ;
 int assert (scalar_t__) ;
 int detach_receiver (struct st_h2o_mruby_http_request_context_t*) ;
 int h2o_fatal (char*) ;
 scalar_t__ h2o_memis (TYPE_21__*,int ,int ,...) ;
 int h2o_mruby_create_data_instance (TYPE_5__*,int ,struct st_h2o_mruby_http_request_context_t*,int *) ;
 int h2o_mruby_new_str (TYPE_5__*,int ,int ) ;
 int h2o_mruby_new_str_static (TYPE_5__*,int ,int ) ;
 int h2o_mruby_run_fiber (TYPE_17__*,int ,int ,int *) ;
 int input_stream_type ;
 int mrb_ary_entry (int ,int ) ;
 int mrb_ary_new_capa (TYPE_5__*,int) ;
 int mrb_ary_set (TYPE_5__*,int ,int,int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_funcall (TYPE_5__*,int ,char*,int,int ) ;
 int mrb_gc_arena_restore (TYPE_5__*,int) ;
 int mrb_gc_arena_save (TYPE_5__*) ;
 int mrb_hash_new_capa (TYPE_5__*,int) ;
 int mrb_hash_set (TYPE_5__*,int ,int ,int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_str_cat (TYPE_5__*,int ,int ,int ) ;
 int mrb_str_cat_lit (TYPE_5__*,int ,char*) ;

__attribute__((used)) static void post_response(struct st_h2o_mruby_http_request_context_t *ctx, int status, const h2o_header_t *headers_sorted,
                          size_t num_headers, int header_requires_dup)
{
    mrb_state *mrb = ctx->ctx->shared->mrb;
    int gc_arena = mrb_gc_arena_save(mrb);
    size_t i;

    mrb_value resp = mrb_ary_new_capa(mrb, 3);


    mrb_ary_set(mrb, resp, 0, mrb_fixnum_value(status));


    mrb_value headers_hash = mrb_hash_new_capa(mrb, (int)num_headers);
    for (i = 0; i < num_headers; ++i) {

        if (h2o_memis(headers_sorted[i].name, headers_sorted[i].name->len, H2O_STRLIT("content-length")) ||
            h2o_memis(headers_sorted[i].name, headers_sorted[i].name->len, H2O_STRLIT("transfer-encoding")))
            continue;

        mrb_value k, v;
        if (header_requires_dup) {
            k = h2o_mruby_new_str(mrb, headers_sorted[i].name->base, headers_sorted[i].name->len);
            v = h2o_mruby_new_str(mrb, headers_sorted[i].value.base, headers_sorted[i].value.len);
        } else {
            k = h2o_mruby_new_str_static(mrb, headers_sorted[i].name->base, headers_sorted[i].name->len);
            v = h2o_mruby_new_str_static(mrb, headers_sorted[i].value.base, headers_sorted[i].value.len);
        }
        while (i + 1 < num_headers && h2o_memis(headers_sorted[i].name->base, headers_sorted[i].name->len,
                                                headers_sorted[i + 1].name->base, headers_sorted[i + 1].name->len)) {
            ++i;
            v = mrb_str_cat_lit(mrb, v, "\n");
            v = mrb_str_cat(mrb, v, headers_sorted[i].value.base, headers_sorted[i].value.len);
        }
        mrb_hash_set(mrb, headers_hash, k, v);
    }
    mrb_ary_set(mrb, resp, 1, headers_hash);


    assert(mrb_nil_p(ctx->refs.input_stream));
    mrb_value input_stream_class;
    if (ctx->req.method_is_head || status == 101 || status == 204 || status == 304) {
        input_stream_class = mrb_ary_entry(ctx->ctx->shared->constants, H2O_MRUBY_HTTP_EMPTY_INPUT_STREAM_CLASS);
    } else {
        input_stream_class = mrb_ary_entry(ctx->ctx->shared->constants, H2O_MRUBY_HTTP_INPUT_STREAM_CLASS);
    }
    ctx->refs.input_stream = h2o_mruby_create_data_instance(mrb, input_stream_class, ctx, &input_stream_type);
    mrb_ary_set(mrb, resp, 2, ctx->refs.input_stream);

    if (mrb_nil_p(ctx->receiver)) {

        mrb_funcall(mrb, ctx->refs.request, "_set_response", 1, resp);
        if (mrb->exc != ((void*)0)) {
            h2o_fatal("_set_response failed\n");
        }
    } else {

        h2o_mruby_run_fiber(ctx->ctx, detach_receiver(ctx), resp, ((void*)0));
    }

    mrb_gc_arena_restore(mrb, gc_arena);
}
