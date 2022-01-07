
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct RProc {int dummy; } ;
typedef int mrb_value ;
struct TYPE_12__ {TYPE_2__* c; } ;
typedef TYPE_3__ mrb_state ;
typedef int mrb_int ;
struct TYPE_11__ {TYPE_1__* ci; } ;
struct TYPE_10__ {int target_class; } ;


 int MRB_PROC_CFUNC_P (struct RProc*) ;
 int MRB_PROC_SET_TARGET_CLASS (struct RProc*,int ) ;
 struct RProc* create_proc_from_string (TYPE_3__*,char*,int,int ,char*,int) ;
 int exec_irep (TYPE_3__*,int ,struct RProc*) ;
 int mrb_assert (int) ;
 int mrb_class_ptr (int ) ;
 int mrb_get_args (TYPE_3__*,char*,char**,...) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_obj_instance_eval (TYPE_3__*,int ) ;
 int mrb_singleton_class (TYPE_3__*,int ) ;

__attribute__((used)) static mrb_value
f_instance_eval(mrb_state *mrb, mrb_value self)
{
  mrb_value b;
  mrb_int argc; mrb_value *argv;

  mrb_get_args(mrb, "*!&", &argv, &argc, &b);

  if (mrb_nil_p(b)) {
    char *s;
    mrb_int len;
    char *file = ((void*)0);
    mrb_int line = 1;
    mrb_value cv;
    struct RProc *proc;

    mrb_get_args(mrb, "s|zi", &s, &len, &file, &line);
    cv = mrb_singleton_class(mrb, self);
    proc = create_proc_from_string(mrb, s, len, mrb_nil_value(), file, line);
    MRB_PROC_SET_TARGET_CLASS(proc, mrb_class_ptr(cv));
    mrb_assert(!MRB_PROC_CFUNC_P(proc));
    mrb->c->ci->target_class = mrb_class_ptr(cv);
    return exec_irep(mrb, self, proc);
  }
  else {
    mrb_get_args(mrb, "&", &b);
    return mrb_obj_instance_eval(mrb, self);
  }
}
