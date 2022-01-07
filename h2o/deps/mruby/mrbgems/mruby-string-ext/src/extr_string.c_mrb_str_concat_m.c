
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_ensure_string_type (int *,int ) ;
 int mrb_fixnum_chr (int *,int ) ;
 scalar_t__ mrb_fixnum_p (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_str_concat (int *,int ,int ) ;

__attribute__((used)) static mrb_value
mrb_str_concat_m(mrb_state *mrb, mrb_value self)
{
  mrb_value str;

  mrb_get_args(mrb, "o", &str);
  if (mrb_fixnum_p(str))
    str = mrb_fixnum_chr(mrb, str);
  else
    str = mrb_ensure_string_type(mrb, str);
  mrb_str_concat(mrb, self, str);
  return self;
}
