
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct RProc {int flags; } ;
typedef int mrb_value ;
typedef int mrb_sym ;
struct TYPE_8__ {int proc_class; } ;
typedef TYPE_1__ mrb_state ;
typedef int mrb_method_t ;


 int E_ARGUMENT_ERROR ;
 int MRB_METHOD_FROM_PROC (int ,struct RProc*) ;
 int MRB_PROC_STRICT ;
 int MRB_TT_PROC ;
 int mrb_class_ptr (int ) ;
 int mrb_define_method_raw (TYPE_1__*,int ,int ,int ) ;
 int mrb_get_args (TYPE_1__*,char*,int *,int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 scalar_t__ mrb_obj_alloc (TYPE_1__*,int ,int ) ;
 int mrb_proc_copy (struct RProc*,int ) ;
 int mrb_proc_ptr (int ) ;
 int mrb_raise (TYPE_1__*,int ,char*) ;
 int mrb_singleton_class (TYPE_1__*,int ) ;
 int mrb_symbol_value (int ) ;

__attribute__((used)) static mrb_value
mod_define_singleton_method(mrb_state *mrb, mrb_value self)
{
  struct RProc *p;
  mrb_method_t m;
  mrb_sym mid;
  mrb_value blk = mrb_nil_value();

  mrb_get_args(mrb, "n&", &mid, &blk);
  if (mrb_nil_p(blk)) {
    mrb_raise(mrb, E_ARGUMENT_ERROR, "no block given");
  }
  p = (struct RProc*)mrb_obj_alloc(mrb, MRB_TT_PROC, mrb->proc_class);
  mrb_proc_copy(p, mrb_proc_ptr(blk));
  p->flags |= MRB_PROC_STRICT;
  MRB_METHOD_FROM_PROC(m, p);
  mrb_define_method_raw(mrb, mrb_class_ptr(mrb_singleton_class(mrb, self)), mid, m);
  return mrb_symbol_value(mid);
}
