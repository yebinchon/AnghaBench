
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ snprintf (int *,int ,char*,int,int) ;
 int sprintf (char*,char*,int,int) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static char *
intkeys2str (int a, int b)
{
  char *s = xmalloc (snprintf (((void*)0), 0, "%d|%d", a, b) + 1);
  sprintf (s, "%d|%d", a, b);

  return s;
}
