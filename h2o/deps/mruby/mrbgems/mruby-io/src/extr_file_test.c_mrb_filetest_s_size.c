
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_fixnum_value (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 scalar_t__ mrb_stat (int *,int ,struct stat*) ;
 int mrb_sys_fail (int *,char*) ;

mrb_value
mrb_filetest_s_size(mrb_state *mrb, mrb_value klass)
{
  struct stat st;
  mrb_value obj;

  mrb_get_args(mrb, "o", &obj);

  if (mrb_stat(mrb, obj, &st) < 0)
    mrb_sys_fail(mrb, "mrb_stat");

  return mrb_fixnum_value(st.st_size);
}
