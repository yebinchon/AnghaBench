
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 scalar_t__ RSTRING_PTR (int ) ;
 int mrb_str_new (int *,scalar_t__,scalar_t__) ;
 int mrb_str_substr (int *,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static mrb_value
str_substr(mrb_state *mrb, mrb_value str, mrb_int beg, mrb_int len)
{



  return mrb_str_substr(mrb, str, beg, len);

}
