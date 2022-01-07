
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int assert (size_t) ;
 int strlen (char const*) ;
 int unhex_chr (char const) ;

__attribute__((used)) static inline size_t unhex(uint8_t *buf, size_t len, const char *str)
{
  size_t used = 0;

  assert(strlen(str) % 2 == 0);
  assert(strlen(str) / 2 <= len);

  while (*str)
  {
    assert(len);
    *buf = unhex_chr(str[0]) << 4 | unhex_chr(str[1]);
    buf++;
    used++;
    str += 2;
    len--;
  }

  return used;
}
