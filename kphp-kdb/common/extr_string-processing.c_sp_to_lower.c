
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* sp_str_alloc (int) ;
 int strlen (char*) ;
 char to_lower (char) ;

char *sp_to_lower (char *s) {
  int l = strlen (s);
  char *t = sp_str_alloc (l);
  if (t != 0) {
    int i;
    for (i = 0; i <= l; i++) {
      t[i] = to_lower (s[i]);
    }
  }

  return t;
}
