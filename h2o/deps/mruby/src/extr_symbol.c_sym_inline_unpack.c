
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_sym ;


 int mrb_assert (int) ;
 char const* sym_inline_unpack_with_bit (int,char*,int) ;

__attribute__((used)) static const char*
sym_inline_unpack(mrb_sym sym, char *buf)
{
  mrb_assert(sym&1);

  if (sym&2) {
    return sym_inline_unpack_with_bit(sym, buf, 5);
  }
  return sym_inline_unpack_with_bit(sym, buf, 6);
}
