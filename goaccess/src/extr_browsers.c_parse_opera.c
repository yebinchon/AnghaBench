
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ snprintf (int *,int ,char*,char*) ;
 int sprintf (char*,char*,char*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static char *
parse_opera (char *token)
{
  char *val = xmalloc (snprintf (((void*)0), 0, "Opera%s", token) + 1);
  sprintf (val, "Opera%s", token);

  return val;
}
