
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * l_case ;
 int lc_str_utf8 (char*,char const*,int) ;
 scalar_t__ word_split_utf8 ;

void lc_str (char *to, const char *from, int len) {
  if (word_split_utf8) {
    lc_str_utf8 (to, from, len);
    return;
  }
  while (len > 0) {
    *to++ = l_case[(unsigned char) *from++];
    len--;
  }
  *to = 0;
}
