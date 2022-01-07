
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct RClass {int dummy; } ;
typedef int name ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
struct TYPE_2__ {struct RClass* c; } ;


 TYPE_1__* mrb_basic_ptr (int ) ;
 struct RClass* mrb_class_get (int *,char*) ;
 struct RClass* mrb_define_class_under (int *,int ,char*,struct RClass*) ;
 int mrb_define_const (int *,struct RClass*,char*,int ) ;
 int mrb_exc_raise (int *,int ) ;
 int mrb_fixnum_value (scalar_t__) ;
 int mrb_funcall (int *,int ,char*,int,int ,...) ;
 int mrb_get_args (int *,char*,scalar_t__*,int *) ;
 int mrb_module_get (int *,char*) ;
 int mrb_nil_value () ;
 struct RClass* mrb_obj_class (int *,int ) ;
 int mrb_obj_value (struct RClass*) ;
 int snprintf (char*,int,char*,long) ;

__attribute__((used)) static mrb_value
mrb_sce_sys_fail(mrb_state *mrb, mrb_value cls)
{
  struct RClass *cl, *sce;
  mrb_value e, msg;
  mrb_int no;
  int argc;
  char name[8];

  sce = mrb_class_get(mrb, "SystemCallError");
  argc = mrb_get_args(mrb, "i|S", &no, &msg);
  if (argc == 1) {
    e = mrb_funcall(mrb, mrb_obj_value(sce), "new", 1, mrb_fixnum_value(no));
  } else {
    e = mrb_funcall(mrb, mrb_obj_value(sce), "new", 2, msg, mrb_fixnum_value(no));
  }
  if (mrb_obj_class(mrb, e) == sce) {
    snprintf(name, sizeof(name), "E%03ld", (long)no);
    cl = mrb_define_class_under(mrb, mrb_module_get(mrb, "Errno"), name, sce);
    mrb_define_const(mrb, cl, "Errno", mrb_fixnum_value(no));
    mrb_basic_ptr(e)->c = cl;
  }
  mrb_exc_raise(mrb, e);
  return mrb_nil_value();
}
