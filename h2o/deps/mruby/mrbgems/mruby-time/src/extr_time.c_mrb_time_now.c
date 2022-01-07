
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int current_mrb_time (int *) ;
 int mrb_class_ptr (int ) ;
 int mrb_time_wrap (int *,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_time_now(mrb_state *mrb, mrb_value self)
{
  return mrb_time_wrap(mrb, mrb_class_ptr(self), current_mrb_time(mrb));
}
