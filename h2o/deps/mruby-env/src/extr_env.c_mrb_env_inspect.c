
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_env_to_hash (int *,int ) ;
 int mrb_funcall (int *,int ,char*,int ) ;

__attribute__((used)) static mrb_value
mrb_env_inspect(mrb_state *mrb, mrb_value self)
{
  mrb_value hash = mrb_env_to_hash(mrb, self);
  return mrb_funcall(mrb, hash, "inspect", 0);
}
