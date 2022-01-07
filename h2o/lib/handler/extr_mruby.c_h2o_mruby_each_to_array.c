
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_4__ {int sym_call; } ;
struct TYPE_5__ {TYPE_1__ symbols; int constants; int mrb; } ;
typedef TYPE_2__ h2o_mruby_shared_context_t ;


 int H2O_MRUBY_PROC_EACH_TO_ARRAY ;
 int mrb_ary_entry (int ,int ) ;
 int mrb_funcall_argv (int ,int ,int ,int,int *) ;

mrb_value h2o_mruby_each_to_array(h2o_mruby_shared_context_t *shared_ctx, mrb_value src)
{
    return mrb_funcall_argv(shared_ctx->mrb, mrb_ary_entry(shared_ctx->constants, H2O_MRUBY_PROC_EACH_TO_ARRAY),
                            shared_ctx->symbols.sym_call, 1, &src);
}
