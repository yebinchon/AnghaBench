
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int MAXPATHLEN ;
 int RSTRING_PTR (int ) ;
 int * getcwd (int ,int ) ;
 int mrb_str_buf_new (int *,int ) ;
 int mrb_str_resize (int *,int ,int ) ;
 int mrb_sys_fail (int *,char*) ;
 int strlen (int ) ;

mrb_value
mrb_dir_getwd(mrb_state *mrb, mrb_value klass)
{
  mrb_value path;

  path = mrb_str_buf_new(mrb, MAXPATHLEN);
  if (getcwd(RSTRING_PTR(path), MAXPATHLEN) == ((void*)0)) {
    mrb_sys_fail(mrb, "getcwd(2)");
  }
  mrb_str_resize(mrb, path, strlen(RSTRING_PTR(path)));
  return path;
}
