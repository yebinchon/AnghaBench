
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_RUNTIME_ERROR ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static mrb_value
mrb_hmac_init_copy(mrb_state *mrb, mrb_value copy)
{
  mrb_raise(mrb, E_RUNTIME_ERROR, "cannot duplicate HMAC");
  return copy;
}
