
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;


 int UTF8_VALID ;
 int* utf8d ;

__attribute__((used)) static uint32_t
utf8_decode (uint32_t * state, uint32_t * p, uint32_t b)
{
  uint32_t type = utf8d[(uint8_t) b];

  *p = (*state != UTF8_VALID) ? (b & 0x3fu) | (*p << 6) : (0xff >> type) & (b);
  *state = utf8d[256 + *state * 16 + type];

  return *state;
}
