
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *
memmove(void *dp, const void *sp, size_t n)
{
 unsigned char *cdp, *csp;

 if (n<=0)
  return dp;
 cdp = dp;
 csp = (unsigned char *)sp;
 if (cdp < csp) {
  do {
   *cdp++ = *csp++;
  } while (--n);
 } else {
  cdp += n;
  csp += n;
  do {
   *--cdp = *--csp;
  } while (--n);
 }
 return dp;
}
