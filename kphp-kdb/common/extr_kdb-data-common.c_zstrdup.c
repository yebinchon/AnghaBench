
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const* const) ;
 scalar_t__ strlen (char const* const) ;
 char* zmalloc (scalar_t__) ;

char *zstrdup (const char *const s) {
  char *p = zmalloc (strlen (s) + 1);
  strcpy (p, s);
  return p;
}
