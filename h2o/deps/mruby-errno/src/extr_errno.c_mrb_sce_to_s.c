
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_attr_get (int *,int ,int ) ;
 int mrb_intern_lit (int *,char*) ;

__attribute__((used)) static mrb_value
mrb_sce_to_s(mrb_state *mrb, mrb_value self)
{
  return mrb_attr_get(mrb, self, mrb_intern_lit(mrb, "mesg"));
}
