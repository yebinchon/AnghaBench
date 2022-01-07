
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ snprintf (int *,int ,char*,int,char) ;
 int sprintf (char*,char*,int,char) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static char *
get_fixed_fmt_width (int w, char type)
{
  char *fmt = xmalloc (snprintf (((void*)0), 0, "%%%d%c", w, type) + 1);
  sprintf (fmt, "%%%d%c", w, type);

  return fmt;
}
