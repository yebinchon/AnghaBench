
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int good_string_to_utf8 (unsigned char*,int*) ;
 int remove_diacritics (int) ;

void bayes_string_to_utf8 (unsigned char *s, int *v) {
  good_string_to_utf8 (s, v);

  int i;
  for (i = 0; v[i]; i++) {
    v[i] = remove_diacritics (v[i]);
  }
}
