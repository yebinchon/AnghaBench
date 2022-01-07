
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_get_args (int *,char*,int *) ;
 char* mrb_str_to_cstr (int *,int ) ;
 int mrb_sys_fail (int *,char*) ;
 int mrb_true_value () ;
 int rmdir (char*) ;

__attribute__((used)) static mrb_value
mrb_io_test_rmdir(mrb_state *mrb, mrb_value klass)
{
  mrb_value str;
  char *cp;

  mrb_get_args(mrb, "S", &str);
  cp = mrb_str_to_cstr(mrb, str);
  if (rmdir(cp) == -1) {
    mrb_sys_fail(mrb, "rmdir");
  }
  return mrb_true_value();
}
