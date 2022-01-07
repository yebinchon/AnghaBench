
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int E_RANGE_ERROR ;
 scalar_t__ RSTRING_LEN (int ) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_str_resize (int *,int ,scalar_t__) ;

__attribute__((used)) static mrb_value
str_len_ensure(mrb_state *mrb, mrb_value str, mrb_int len)
{
  mrb_int n = RSTRING_LEN(str);
  if (len < 0) {
    mrb_raise(mrb, E_RANGE_ERROR, "negative (or overflowed) integer");
  }
  if (len > n) {
    do {
      n *= 2;
    } while (len > n);
    str = mrb_str_resize(mrb, str, n);
  }
  return str;
}
