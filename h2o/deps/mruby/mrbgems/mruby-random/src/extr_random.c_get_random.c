
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_class_get (int *,char*) ;
 int mrb_const_get (int *,int ,int ) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_obj_value (int ) ;

__attribute__((used)) static mrb_value
get_random(mrb_state *mrb) {
  return mrb_const_get(mrb,
             mrb_obj_value(mrb_class_get(mrb, "Random")),
             mrb_intern_lit(mrb, "DEFAULT"));
}
