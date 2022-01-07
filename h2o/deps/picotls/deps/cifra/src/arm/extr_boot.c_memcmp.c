
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



int memcmp(const void *va, const void *vb, size_t len)
{
  const uint8_t *a = va, *b = vb;

  for (size_t i = 0; i < len; i++)
  {
    if (a[i] != b[i])
      return a[i] < b[i] ? -1 : 1;
  }

  return 0;
}
