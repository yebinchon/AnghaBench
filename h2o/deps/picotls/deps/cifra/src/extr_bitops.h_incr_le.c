
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static inline void incr_le(uint8_t *v, size_t len)
{
  size_t i = 0;
  while (1)
  {
    if (++v[i] != 0)
      return;
    i++;
    if (i == len)
      return;
  }
}
