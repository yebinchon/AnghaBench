
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct RProc {struct RClass* c; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
struct TYPE_6__ {struct RClass* proc_class; } ;
typedef TYPE_1__ mrb_state ;


 int mrb_fixnum_value (int) ;
 int mrb_funcall (TYPE_1__*,int ,char*,int ) ;
 int mrb_intern_lit (TYPE_1__*,char*) ;
 int mrb_iv_get (TYPE_1__*,int ,int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 struct RProc* mrb_proc_ptr (int ) ;

__attribute__((used)) static mrb_value
method_arity(mrb_state *mrb, mrb_value self)
{
  mrb_value proc = mrb_iv_get(mrb, self, mrb_intern_lit(mrb, "proc"));
  struct RProc *rproc;
  struct RClass *orig;
  mrb_value ret;

  if (mrb_nil_p(proc))
    return mrb_fixnum_value(-1);

  rproc = mrb_proc_ptr(proc);
  orig = rproc->c;
  rproc->c = mrb->proc_class;
  ret = mrb_funcall(mrb, proc, "arity", 0);
  rproc->c = orig;
  return ret;
}
