
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_class_get (int *,char*) ;
 int mrb_funcall (int *,int ,char*,int,int ) ;
 int mrb_ll2num (int *,long long) ;
 int mrb_obj_value (int ) ;

__attribute__((used)) static mrb_value
time_at_with_sec(mrb_state *mrb, long long sec)
{
  return mrb_funcall(mrb, mrb_obj_value(mrb_class_get(mrb, "Time")), "at", 1, mrb_ll2num(mrb, sec));
}
