
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
struct TYPE_15__ {TYPE_2__* c; } ;
typedef TYPE_3__ mrb_state ;
typedef scalar_t__ mrb_int ;
struct TYPE_14__ {TYPE_1__* ci; } ;
struct TYPE_13__ {int mid; } ;


 int RARRAY_PTR (int ) ;
 int mrb_ary_new_from_values (TYPE_3__*,scalar_t__,int *) ;
 int mrb_ary_unshift (TYPE_3__*,int ,int ) ;
 struct RClass* mrb_class_ptr (int ) ;
 int mrb_funcall_argv (TYPE_3__*,int ,int ,scalar_t__,int ) ;
 int mrb_funcall_with_block (TYPE_3__*,int ,int ,scalar_t__,int *,int ) ;
 int mrb_get_args (TYPE_3__*,char*,int **,scalar_t__*,int *) ;
 int mrb_intern_lit (TYPE_3__*,char*) ;
 int mrb_iv_get (TYPE_3__*,int ,int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_symbol (int ) ;
 int mrb_yield_with_class (TYPE_3__*,int ,scalar_t__,int *,int ,struct RClass*) ;

__attribute__((used)) static mrb_value
method_call(mrb_state *mrb, mrb_value self)
{
  mrb_value proc = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "proc"));
  mrb_value name = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@name"));
  mrb_value recv = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@recv"));
  struct RClass *owner = mrb_class_ptr(mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "@owner")));
  mrb_int argc;
  mrb_value *argv, ret, block;
  mrb_sym orig_mid;

  mrb_get_args(mrb, "*&", &argv, &argc, &block);
  orig_mid = mrb->c->ci->mid;
  mrb->c->ci->mid = mrb_symbol(name);
  if (mrb_nil_p(proc)) {
    mrb_value missing_argv = mrb_ary_new_from_values(mrb, argc, argv);
    mrb_ary_unshift(mrb, missing_argv, name);
    ret = mrb_funcall_argv(mrb, recv, mrb_intern_lit(mrb, "method_missing"), argc + 1, RARRAY_PTR(missing_argv));
  }
  else if (!mrb_nil_p(block)) {




    ret = mrb_funcall_with_block(mrb, recv, mrb_symbol(name), argc, argv, block);
  }
  else {
    ret = mrb_yield_with_class(mrb, proc, argc, argv, recv, owner);
  }
  mrb->c->ci->mid = orig_mid;
  return ret;
}
