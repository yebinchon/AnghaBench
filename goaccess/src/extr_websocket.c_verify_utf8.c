
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;


 int UTF8_INVAL ;
 int* utf8d ;

__attribute__((used)) static uint32_t
verify_utf8 (uint32_t * state, const char *str, int len)
{
  int i;
  uint32_t type;

  for (i = 0; i < len; ++i) {
    type = utf8d[(uint8_t) str[i]];
    *state = utf8d[256 + (*state) * 16 + type];

    if (*state == UTF8_INVAL)
      break;
  }

  return *state;
}
