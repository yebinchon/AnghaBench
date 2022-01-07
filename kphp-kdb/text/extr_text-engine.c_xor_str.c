
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int char_to_hex (char) ;
 char hex_to_char (int) ;

void xor_str (char *str1, const char *str2, int digits) {
  int i;
  for (i = 0; i < digits; i++) {
    str1[i] = hex_to_char (char_to_hex (str1[i]) ^ char_to_hex (*str2++));
  }
}
