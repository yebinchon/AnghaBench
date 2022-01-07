
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ has_content; } ;
struct st_h2o_mruby_http_request_context_t {int consumed; TYPE_1__ resp; } ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_7__ {TYPE_2__* shared; } ;
typedef TYPE_3__ h2o_mruby_context_t ;
struct TYPE_6__ {int * mrb; } ;


 int E_ARGUMENT_ERROR ;
 int attach_receiver (struct st_h2o_mruby_http_request_context_t*,int ) ;
 int build_chunk (struct st_h2o_mruby_http_request_context_t*) ;
 int create_already_consumed_error (int *) ;
 int input_stream_type ;
 int mrb_ary_entry (int ,int) ;
 scalar_t__ mrb_bool (int ) ;
 struct st_h2o_mruby_http_request_context_t* mrb_data_check_get_ptr (int *,int ,int *) ;
 int mrb_exc_new_str_lit (int *,int ,char*) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value http_fetch_chunk_callback(h2o_mruby_context_t *mctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                           int *run_again)
{
    mrb_state *mrb = mctx->shared->mrb;
    struct st_h2o_mruby_http_request_context_t *ctx;
    mrb_value ret;

    if ((ctx = mrb_data_check_get_ptr(mrb, mrb_ary_entry(args, 0), &input_stream_type)) == ((void*)0)) {
        *run_again = 1;
        return mrb_exc_new_str_lit(mrb, E_ARGUMENT_ERROR, "_HttpInputStream#each wrong self");
    }

    mrb_value first = mrb_ary_entry(args, 1);
    if (mrb_bool(first)) {

        if (ctx->consumed) {
            *run_again = 1;
            return create_already_consumed_error(mrb);
        }
        ctx->consumed = 1;
    }

    if (ctx->resp.has_content) {
        ret = build_chunk(ctx);
        *run_again = 1;
    } else {
        attach_receiver(ctx, *receiver);
        ret = mrb_nil_value();
    }

    return ret;
}
