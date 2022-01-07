
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_10__ {int * exc; TYPE_2__* ud; } ;
typedef TYPE_1__ mrb_state ;
struct TYPE_12__ {scalar_t__ size; int * entries; } ;
struct TYPE_11__ {TYPE_7__ callbacks; } ;
typedef TYPE_2__ h2o_mruby_shared_context_t ;
typedef int h2o_mruby_callback_t ;


 int h2o_error_printf (char*,char const*) ;
 int h2o_mruby_assert (TYPE_1__*) ;
 int h2o_vector_reserve (int *,TYPE_7__*,scalar_t__) ;
 int mrb_fixnum_value (int) ;
 int mrb_funcall_argv (TYPE_1__*,int ,int ,int,int *) ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 int mrb_str_new_cstr (TYPE_1__*,char const*) ;
 int mrb_top_self (TYPE_1__*) ;

void h2o_mruby_define_callback(mrb_state *mrb, const char *name, h2o_mruby_callback_t callback)
{
    h2o_mruby_shared_context_t *shared_ctx = mrb->ud;
    h2o_vector_reserve(((void*)0), &shared_ctx->callbacks, shared_ctx->callbacks.size + 1);
    shared_ctx->callbacks.entries[shared_ctx->callbacks.size++] = callback;

    mrb_value args[2];
    args[0] = mrb_str_new_cstr(mrb, name);
    args[1] = mrb_fixnum_value(-(int)shared_ctx->callbacks.size);
    mrb_funcall_argv(mrb, mrb_top_self(mrb), mrb_intern_lit(mrb, "_h2o_define_callback"), 2, args);

    if (mrb->exc != ((void*)0)) {
        h2o_error_printf("failed to define mruby function: %s\n", name);
        h2o_mruby_assert(mrb);
    }
}
