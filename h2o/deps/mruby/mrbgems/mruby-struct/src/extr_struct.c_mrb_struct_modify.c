
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_FROZEN_ERROR ;
 scalar_t__ MRB_FROZEN_P (int ) ;
 int mrb_basic_ptr (int ) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_write_barrier (int *,int ) ;

__attribute__((used)) static void
mrb_struct_modify(mrb_state *mrb, mrb_value strct)
{
  if (MRB_FROZEN_P(mrb_basic_ptr(strct))) {
    mrb_raise(mrb, E_FROZEN_ERROR, "can't modify frozen struct");
  }

  mrb_write_barrier(mrb, mrb_basic_ptr(strct));
}
