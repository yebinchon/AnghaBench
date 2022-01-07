
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int memcmp(const void *cs, const void *ct, size_t count)
{
 const unsigned char *su1 = cs, *su2 = ct, *end = su1 + count;
 int res = 0;

 while (su1 < end) {
  res = *su1++ - *su2++;
  if (res)
   break;
 }
 return res;
}
