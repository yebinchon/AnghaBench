
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_fixnum_value (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 char* mrb_str_to_cstr (int *,int ) ;
 int mrb_sys_fail (int *,char*) ;
 int rmdir (char*) ;

mrb_value
mrb_dir_delete(mrb_state *mrb, mrb_value klass)
{
  mrb_value path;
  char *cpath;

  mrb_get_args(mrb, "S", &path);
  cpath = mrb_str_to_cstr(mrb, path);
  if (rmdir(cpath) == -1) {
    mrb_sys_fail(mrb, cpath);
  }
  return mrb_fixnum_value(0);
}
