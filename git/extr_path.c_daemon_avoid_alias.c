
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int daemon_avoid_alias(const char *p)
{
 int sl, ndot;
 if (!p || (*p != '/' && *p != '~'))
  return -1;
 sl = 1; ndot = 0;
 p++;

 while (1) {
  char ch = *p++;
  if (sl) {
   if (ch == '.')
    ndot++;
   else if (ch == '/') {
    if (ndot < 3)

     return -1;
    ndot = 0;
   }
   else if (ch == 0) {
    if (0 < ndot && ndot < 3)

     return -1;
    return 0;
   }
   else
    sl = ndot = 0;
  }
  else if (ch == 0)
   return 0;
  else if (ch == '/') {
   sl = 1;
   ndot = 0;
  }
 }
}
