
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ RARRAY_LEN (int ) ;
 scalar_t__ RARRAY_PTR (int ) ;
 int match_data_to_a (int *,int ) ;
 int mrb_ary_new_from_values (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static mrb_value
match_data_captures(mrb_state* mrb, mrb_value self) {
  mrb_value ary = match_data_to_a(mrb, self);
  return mrb_ary_new_from_values(mrb, RARRAY_LEN(ary) - 1, RARRAY_PTR(ary) + 1);
}
