
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ snprintf (int *,int ,char*,int,int) ;
 int sprintf (char*,char*,int,int) ;
 char* xmalloc (scalar_t__) ;

char *
int2str (int d, int width)
{
  char *s = xmalloc (snprintf (((void*)0), 0, "%*d", width, d) + 1);
  sprintf (s, "%*d", width, d);

  return s;
}
