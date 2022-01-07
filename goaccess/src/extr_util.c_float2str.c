
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ snprintf (int *,int ,char*,int,float) ;
 int sprintf (char*,char*,int,float) ;
 char* xmalloc (scalar_t__) ;

char *
float2str (float d, int width)
{
  char *s = xmalloc (snprintf (((void*)0), 0, "%*.2f", width, d) + 1);
  sprintf (s, "%*.2f", width, d);

  return s;
}
