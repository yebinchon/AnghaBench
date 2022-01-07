
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 char* RSTRING_PTR (int ) ;
 scalar_t__ mrb_fixnum (int ) ;
 int str_len_ensure (int *,int ,int) ;

__attribute__((used)) static int
pack_c(mrb_state *mrb, mrb_value o, mrb_value str, mrb_int sidx, unsigned int flags)
{
  str = str_len_ensure(mrb, str, sidx + 1);
  RSTRING_PTR(str)[sidx] = (char)mrb_fixnum(o);
  return 1;
}
