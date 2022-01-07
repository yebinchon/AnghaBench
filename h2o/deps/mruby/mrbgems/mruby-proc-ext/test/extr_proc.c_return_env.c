
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int mrb_cfunc_env_get (int *,int ) ;
 int mrb_get_args (int *,char*,int *) ;

__attribute__((used)) static mrb_value
return_env(mrb_state *mrb, mrb_value self)
{
  mrb_int idx;
  mrb_get_args(mrb, "i", &idx);
  return mrb_cfunc_env_get(mrb, idx);
}
