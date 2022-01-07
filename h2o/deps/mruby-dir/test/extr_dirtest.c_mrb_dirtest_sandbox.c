
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_cv_get (int *,int ,int ) ;
 int mrb_intern_cstr (int *,char*) ;

mrb_value
mrb_dirtest_sandbox(mrb_state *mrb, mrb_value klass)
{
  return mrb_cv_get(mrb, klass, mrb_intern_cstr(mrb, "sandbox"));
}
