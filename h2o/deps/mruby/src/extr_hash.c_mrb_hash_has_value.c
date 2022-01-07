
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct has_v_arg {int found; int val; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 int FALSE ;
 int RHASH_TBL (int ) ;
 int hash_has_value_i ;
 int ht_foreach (int *,int ,int ,struct has_v_arg*) ;
 int mrb_bool_value (int ) ;
 int mrb_get_args (int *,char*,int *) ;

__attribute__((used)) static mrb_value
mrb_hash_has_value(mrb_state *mrb, mrb_value hash)
{
  mrb_value val;
  struct has_v_arg arg;

  mrb_get_args(mrb, "o", &val);
  arg.found = FALSE;
  arg.val = val;
  ht_foreach(mrb, RHASH_TBL(hash), hash_has_value_i, &arg);
  return mrb_bool_value(arg.found);
}
