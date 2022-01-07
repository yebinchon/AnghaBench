
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static inline void incr_be(uint8_t *v, size_t len)
{
  len--;
  while (1)
  {
    if (++v[len] != 0)
      return;
    if (len == 0)
      return;
    len--;
  }
}
