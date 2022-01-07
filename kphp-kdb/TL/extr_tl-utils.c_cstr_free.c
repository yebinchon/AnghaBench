
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char*) ;
 int tl_zzfree (char*,scalar_t__) ;

void cstr_free (char **s) {
  char *p = *s;
  if (p) {
    tl_zzfree (p, strlen (p) + 1);
    *s = ((void*)0);
  }
}
