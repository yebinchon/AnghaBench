
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 scalar_t__ mrb_fixnum (int ) ;
 int mrb_fixnum_value (scalar_t__) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_to_int (int *,int ) ;

__attribute__((used)) static mrb_value
get_opt(mrb_state* mrb)
{
  mrb_value arg;

  arg = mrb_nil_value();
  mrb_get_args(mrb, "|o", &arg);

  if (!mrb_nil_p(arg)) {
    mrb_int i;

    arg = mrb_to_int(mrb, arg);
    i = mrb_fixnum(arg);
    if (i < 0) {
      arg = mrb_fixnum_value(0 - i);
    }
  }
  return arg;
}
