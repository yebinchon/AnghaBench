
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmon_getchar () ;

char *xmon_gets(char *str, int nb)
{
 char *p;
 int c;

 for (p = str; p < str + nb - 1; ) {
  c = xmon_getchar();
  if (c == -1) {
   if (p == str)
    return ((void*)0);
   break;
  }
  *p++ = c;
  if (c == '\n')
   break;
 }
 *p = 0;
 return str;
}
