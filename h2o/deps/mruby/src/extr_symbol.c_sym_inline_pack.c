
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int mrb_sym ;


 char const* pack_table ;
 char* strchr (char const*,int) ;

__attribute__((used)) static mrb_sym
sym_inline_pack(const char *name, uint16_t len)
{
  char c;
  const char *p;
  int i;
  mrb_sym sym = 0;
  int lower = 1;

  if (len > 6) return 0;
  for (i=0; i<len; i++) {
    uint32_t bits;

    c = name[i];
    if (c == 0) return 0;
    p = strchr(pack_table, (int)c);
    if (p == 0) return 0;
    bits = (uint32_t)(p - pack_table)+1;
    if (bits > 27) lower = 0;
    sym |= bits<<(i*6+2);
  }
  if (lower) {
    sym = 0;
    for (i=0; i<len; i++) {
      uint32_t bits;

      c = name[i];
      p = strchr(pack_table, (int)c);
      bits = (uint32_t)(p - pack_table)+1;
      sym |= bits<<(i*5+2);
    }
    return sym | 3;
  }
  if (len == 6) return 0;
  return sym | 1;
}
