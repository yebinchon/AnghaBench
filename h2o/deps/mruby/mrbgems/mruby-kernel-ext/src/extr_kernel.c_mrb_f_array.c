
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int MRB_TT_ARRAY ;
 int mrb_ary_new_from_values (int *,int,int *) ;
 int mrb_check_convert_type (int *,int ,int ,char*,char*) ;
 int mrb_get_args (int *,char*,int *) ;
 scalar_t__ mrb_nil_p (int ) ;

__attribute__((used)) static mrb_value
mrb_f_array(mrb_state *mrb, mrb_value self)
{
  mrb_value arg, tmp;

  mrb_get_args(mrb, "o", &arg);
  tmp = mrb_check_convert_type(mrb, arg, MRB_TT_ARRAY, "Array", "to_a");
  if (mrb_nil_p(tmp)) {
    return mrb_ary_new_from_values(mrb, 1, &arg);
  }

  return tmp;
}
