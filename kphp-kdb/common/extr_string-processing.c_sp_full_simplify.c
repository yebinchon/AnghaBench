
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char conv_letter (char) ;
 int next_character (char const*,int*) ;
 char simplify (int ) ;
 char* sp_str_alloc (int) ;
 char* sp_str_pre_alloc (int) ;
 int strlen (char const*) ;

char *sp_full_simplify (const char *s) {
  int l = strlen (s);
  char *t = sp_str_pre_alloc (l);
  if (t != 0) {
    int nl = 0, i;
    for (i = 0; i < l; i++) {
      char c = simplify (next_character (s, &i));
      if (c != 0) {
        t[nl++] = conv_letter (c);
      }
    }
    t[nl] = 0;

    char *new_t = sp_str_alloc (nl);
    assert (t == new_t);
  }

  return t;
}
