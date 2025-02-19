
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* is_letter_utf8 ;
 int sigil_word_detect (int,char const*) ;

int get_notword_utf8 (const char *str) {
  int b = 0, d = 0;
  int c;
  while (b <= 30 && d <= 4) {
    c = (unsigned char) *str;
    if (!c || (is_letter_utf8[c] & 0x3f)) {
      break;
    }
    if ((is_letter_utf8[c] & 0x40)) {
      int z = sigil_word_detect (c, str + 1);
      if (z > 0 && z < 127) {
        break;
      }
    }
    if (c >= 0xc2 && c <= 0xdf && (signed char) str[1] < -0x40) {
      c = ((c & 0x1f) << 6) | (str[1] & 0x3f);
      if (is_letter_utf8[c] & 8) {
 break;
      }
      str += 2;
      b += 2;
      d++;
      continue;
    }
    if (c == '<' && str[1] == 'b') {
      if (!str[2]) {

 return -1;
      } else if (str[2] == 'r') {
 if (str[3] == '>') {
   str += 4;
   b += 4;
   d++;
   continue;
 } else if (str[3] == '/' && str[4] == '>') {
   str += 5;
   b += 5;
   d++;
   continue;
 }
      }
    }
    str++;
    b++;
    d++;
  }
  return b;
}
