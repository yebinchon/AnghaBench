
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int chdir (char*) ;
 int mrb_fixnum_value (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 char* mrb_str_to_cstr (int *,int ) ;
 int mrb_sys_fail (int *,char*) ;

mrb_value
mrb_dir_chdir(mrb_state *mrb, mrb_value klass)
{
  mrb_value spath;
  char *path;

  mrb_get_args(mrb, "S", &spath);
  path = mrb_str_to_cstr(mrb, spath);
  if (chdir(path) == -1) {
    mrb_sys_fail(mrb, path);
  }
  return mrb_fixnum_value(0);
}
