
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int hc_str(const char *s, size_t len)
{
 unsigned int r = 0;
 while (len-- > 0)
  r = r * 31 + *s++;
 return r;
}
