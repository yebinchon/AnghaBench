
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_h2o_mruby_redis_command_context_t {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_5__ {TYPE_1__* shared; } ;
typedef TYPE_2__ h2o_mruby_context_t ;
struct TYPE_4__ {int * mrb; } ;


 int E_ARGUMENT_ERROR ;
 int attach_receiver (struct st_h2o_mruby_redis_command_context_t*,int ) ;
 int command_type ;
 int mrb_ary_entry (int ,int ) ;
 struct st_h2o_mruby_redis_command_context_t* mrb_data_check_get_ptr (int *,int ,int *) ;
 int mrb_exc_new_str_lit (int *,int ,char*) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value redis_join_reply_callback(h2o_mruby_context_t *mctx, mrb_value input, mrb_value *receiver, mrb_value args,
                                           int *run_again)
{
    mrb_state *mrb = mctx->shared->mrb;
    struct st_h2o_mruby_redis_command_context_t *ctx;

    if ((ctx = mrb_data_check_get_ptr(mrb, mrb_ary_entry(args, 0), &command_type)) == ((void*)0))
        return mrb_exc_new_str_lit(mrb, E_ARGUMENT_ERROR, "Redis::Command#join wrong self");

    attach_receiver(ctx, *receiver);
    return mrb_nil_value();
}
