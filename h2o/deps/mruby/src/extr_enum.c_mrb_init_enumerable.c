
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RClass {int dummy; } ;
typedef int mrb_state ;


 int MRB_ARGS_REQ (int) ;
 int enum_update_hash ;
 struct RClass* mrb_define_module (int *,char*) ;
 int mrb_define_module_function (int *,struct RClass*,char*,int ,int ) ;

void
mrb_init_enumerable(mrb_state *mrb)
{
  struct RClass *enumerable;
  enumerable = mrb_define_module(mrb, "Enumerable");
  mrb_define_module_function(mrb, enumerable, "__update_hash", enum_update_hash, MRB_ARGS_REQ(1));
}
