
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int RARRAY_LEN (int ) ;
 int RARRAY_PTR (int ) ;
 int mrb_ary_new_from_values (int *,int ,int ) ;
 int mrb_ary_shuffle_bang (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_ary_shuffle(mrb_state *mrb, mrb_value ary)
{
  mrb_value new_ary = mrb_ary_new_from_values(mrb, RARRAY_LEN(ary), RARRAY_PTR(ary));
  mrb_ary_shuffle_bang(mrb, new_ary);

  return new_ary;
}
