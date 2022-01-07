
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_str_class_utf8 (char const*,int) ;
 int* is_letter ;
 scalar_t__ word_split_utf8 ;

int get_str_class (const char *text, int len) {
  if (word_split_utf8) {
    return get_str_class_utf8 (text, len);
  }
  int i, c = -1;
  for (i = 0; i < len; i++) {
    c &= is_letter[(unsigned char) text[i]];
  }
  return c;
}
