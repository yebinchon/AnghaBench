
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ func; scalar_t__ irep; } ;
struct RProc {TYPE_1__ body; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int IV_GET (int ,char*) ;
 scalar_t__ MRB_PROC_CFUNC_P (struct RProc*) ;
 scalar_t__ mrb_class (int *,int ) ;
 struct RClass* mrb_class_ptr (int ) ;
 int mrb_false_value () ;
 int mrb_get_args (int *,char*,int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_obj_equal (int *,int ,int ) ;
 int mrb_obj_is_instance_of (int *,int ,scalar_t__) ;
 struct RProc* mrb_proc_ptr (int ) ;
 scalar_t__ mrb_symbol (int ) ;
 int mrb_true_value () ;

__attribute__((used)) static mrb_value
method_eql(mrb_state *mrb, mrb_value self)
{
  mrb_value other, receiver, orig_proc, other_proc;
  struct RClass *owner, *klass;
  struct RProc *orig_rproc, *other_rproc;

  mrb_get_args(mrb, "o", &other);
  if (!mrb_obj_is_instance_of(mrb, other, mrb_class(mrb, self)))
    return mrb_false_value();

  if (mrb_class(mrb, self) != mrb_class(mrb, other))
    return mrb_false_value();

  klass = mrb_class_ptr(IV_GET(self, "@klass"));
  if (klass != mrb_class_ptr(IV_GET(other, "@klass")))
    return mrb_false_value();

  owner = mrb_class_ptr(IV_GET(self, "@owner"));
  if (owner != mrb_class_ptr(IV_GET(other, "@owner")))
    return mrb_false_value();

  receiver = IV_GET(self, "@recv");
  if (!mrb_obj_equal(mrb, receiver, IV_GET(other, "@recv")))
    return mrb_false_value();

  orig_proc = IV_GET(self, "proc");
  other_proc = IV_GET(other, "proc");
  if (mrb_nil_p(orig_proc) && mrb_nil_p(other_proc)) {
    if (mrb_symbol(IV_GET(self, "@name")) == mrb_symbol(IV_GET(other, "@name")))
      return mrb_true_value();
    else
      return mrb_false_value();
  }

  if (mrb_nil_p(orig_proc))
    return mrb_false_value();
  if (mrb_nil_p(other_proc))
    return mrb_false_value();

  orig_rproc = mrb_proc_ptr(orig_proc);
  other_rproc = mrb_proc_ptr(other_proc);
  if (MRB_PROC_CFUNC_P(orig_rproc)) {
    if (!MRB_PROC_CFUNC_P(other_rproc))
      return mrb_false_value();
    if (orig_rproc->body.func != other_rproc->body.func)
      return mrb_false_value();
  }
  else {
    if (MRB_PROC_CFUNC_P(other_rproc))
      return mrb_false_value();
    if (orig_rproc->body.irep != other_rproc->body.irep)
      return mrb_false_value();
  }

  return mrb_true_value();
}
