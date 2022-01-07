
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const* const) ;
 int strlen (char const* const) ;
 char* tl_zzmalloc (int) ;

char *cstr_dup (const char *const input) {
  int l = strlen (input);
  char *p = tl_zzmalloc (l + 1);
  strcpy (p, input);
  return p;
}
