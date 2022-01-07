
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int memmove (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void strip(char *str)
{
 char *p = str;
 int l;

 while ((isspace(*p)))
  p++;
 l = strlen(p);
 if (p != str)
  memmove(str, p, l + 1);
 if (!l)
  return;
 p = str + l - 1;
 while ((isspace(*p)))
  *p-- = 0;
}
