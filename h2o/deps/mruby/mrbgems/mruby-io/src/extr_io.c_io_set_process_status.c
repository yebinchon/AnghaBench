
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int pid_t ;
typedef int mrb_value ;
typedef int mrb_state ;


 int WEXITSTATUS (int) ;
 scalar_t__ mrb_class_defined (int *,char*) ;
 struct RClass* mrb_class_get_under (int *,struct RClass*,char*) ;
 scalar_t__ mrb_const_defined (int *,int ,int ) ;
 int mrb_fixnum_value (int) ;
 int mrb_funcall (int *,int ,char*,int,int ,int ) ;
 int mrb_gv_set (int *,int ,int ) ;
 int mrb_intern_cstr (int *,char*) ;
 struct RClass* mrb_module_get (int *,char*) ;
 int mrb_obj_value (struct RClass*) ;

__attribute__((used)) static void
io_set_process_status(mrb_state *mrb, pid_t pid, int status)
{
  struct RClass *c_process, *c_status;
  mrb_value v;

  c_status = ((void*)0);
  if (mrb_class_defined(mrb, "Process")) {
    c_process = mrb_module_get(mrb, "Process");
    if (mrb_const_defined(mrb, mrb_obj_value(c_process), mrb_intern_cstr(mrb, "Status"))) {
      c_status = mrb_class_get_under(mrb, c_process, "Status");
    }
  }
  if (c_status != ((void*)0)) {
    v = mrb_funcall(mrb, mrb_obj_value(c_status), "new", 2, mrb_fixnum_value(pid), mrb_fixnum_value(status));
  } else {
    v = mrb_fixnum_value(WEXITSTATUS(status));
  }
  mrb_gv_set(mrb, mrb_intern_cstr(mrb, "$?"), v);
}
