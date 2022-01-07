
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_mruby_subreq_t {scalar_t__ state; int receiver; TYPE_4__* buf; } ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_6__ {TYPE_1__* shared; } ;
typedef TYPE_2__ h2o_mruby_context_t ;
struct TYPE_7__ {scalar_t__ size; int bytes; } ;
struct TYPE_5__ {int * mrb; } ;


 int * DATA_PTR (int ) ;
 int E_ARGUMENT_ERROR ;
 scalar_t__ FINAL_RECEIVED ;
 int app_input_stream_type ;
 int assert (int ) ;
 int h2o_buffer_consume (TYPE_4__**,scalar_t__) ;
 int h2o_mruby_new_str (int *,int ,scalar_t__) ;
 int mrb_ary_entry (int ,int ) ;
 struct st_mruby_subreq_t* mrb_data_check_get_ptr (int *,int ,int *) ;
 int mrb_exc_new_str_lit (int *,int ,char*) ;
 int mrb_gc_register (int *,int ) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value middleware_wait_chunk_callback(h2o_mruby_context_t *mctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                                int *run_again)
{
    mrb_state *mrb = mctx->shared->mrb;
    struct st_mruby_subreq_t *subreq;

    mrb_value obj = mrb_ary_entry(args, 0);
    if (DATA_PTR(obj) == ((void*)0)) {
        return mrb_exc_new_str_lit(mrb, E_ARGUMENT_ERROR, "downstream HTTP closed");
    } else if ((subreq = mrb_data_check_get_ptr(mrb, obj, &app_input_stream_type)) == ((void*)0)) {
        return mrb_exc_new_str_lit(mrb, E_ARGUMENT_ERROR, "AppInputStream#each wrong self");
    }

    if (subreq->buf->size != 0) {
        *run_again = 1;
        mrb_value chunk = h2o_mruby_new_str(mrb, subreq->buf->bytes, subreq->buf->size);
        h2o_buffer_consume(&subreq->buf, subreq->buf->size);
        return chunk;
    } else if (subreq->state == FINAL_RECEIVED) {
        *run_again = 1;
        return mrb_nil_value();
    } else {
        assert(mrb_nil_p(subreq->receiver));
        subreq->receiver = *receiver;
        mrb_gc_register(mrb, *receiver);
        return mrb_nil_value();
    }
}
