
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_mruby_channel_context_t {int ctx; int receivers; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ RARRAY_LEN (int ) ;
 int channel_type ;
 int h2o_mruby_run_fiber (int ,int ,int ,int *) ;
 int mrb_ary_shift (int *,int ) ;
 struct st_h2o_mruby_channel_context_t* mrb_data_get_ptr (int *,int ,int *) ;
 int mrb_gc_arena_restore (int *,int) ;
 int mrb_gc_arena_save (int *) ;
 int mrb_gc_protect (int *,int ) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value channel_notify_method(mrb_state *mrb, mrb_value self)
{
    struct st_h2o_mruby_channel_context_t *ctx;
    ctx = mrb_data_get_ptr(mrb, self, &channel_type);

    if (RARRAY_LEN(ctx->receivers) != 0) {
        int gc_arena = mrb_gc_arena_save(mrb);
        mrb_value receiver = mrb_ary_shift(mrb, ctx->receivers);
        mrb_gc_protect(mrb, receiver);
        h2o_mruby_run_fiber(ctx->ctx, receiver, mrb_nil_value(), ((void*)0));
        mrb_gc_arena_restore(mrb, gc_arena);
    }

    return mrb_nil_value();
}
