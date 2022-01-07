
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;


 int mrb_define_module (int *,char*) ;

void
mrb_init_comparable(mrb_state *mrb)
{
  mrb_define_module(mrb, "Comparable");
}
