
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int MRB_TT_STRING ;
 int mrb_convert_type (int *,int ,int ,char*,char*) ;
 int mrb_get_args (int *,char*,int *) ;

__attribute__((used)) static mrb_value
mrb_f_string(mrb_state *mrb, mrb_value self)
{
  mrb_value arg, tmp;

  mrb_get_args(mrb, "o", &arg);
  tmp = mrb_convert_type(mrb, arg, MRB_TT_STRING, "String", "to_s");
  return tmp;
}
