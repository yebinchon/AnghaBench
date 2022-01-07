
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int strcmp(const char *cs, const char *ct)
{
 unsigned char c1, c2;
 int res = 0;

 do {
  c1 = *cs++;
  c2 = *ct++;
  res = c1 - c2;
  if (res)
   break;
 } while (c1);
 return res;
}
