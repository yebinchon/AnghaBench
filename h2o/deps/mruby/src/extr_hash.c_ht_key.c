
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int MRB_FROZEN_P (int ) ;
 int MRB_SET_FROZEN_FLAG (int ) ;
 int mrb_str_dup (int *,int ) ;
 int mrb_str_ptr (int ) ;
 scalar_t__ mrb_string_p (int ) ;

__attribute__((used)) static inline mrb_value
ht_key(mrb_state *mrb, mrb_value key)
{
  if (mrb_string_p(key) && !MRB_FROZEN_P(mrb_str_ptr(key))) {
    key = mrb_str_dup(mrb, key);
    MRB_SET_FROZEN_FLAG(mrb_str_ptr(key));
  }
  return key;
}
