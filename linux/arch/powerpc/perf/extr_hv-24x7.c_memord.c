
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (void const*,void const*,size_t) ;

__attribute__((used)) static int memord(const void *d1, size_t s1, const void *d2, size_t s2)
{
 if (s1 < s2)
  return 1;
 if (s1 > s2)
  return -1;

 return memcmp(d1, d2, s1);
}
