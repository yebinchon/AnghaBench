
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* utf8_to_win_convert_0x000 ;
 int* utf8_to_win_convert_0x2000 ;
 int* utf8_to_win_convert_0x2100 ;
 int* utf8_to_win_convert_0x400 ;
 int* utf8_to_win_convert_0xff00 ;

int utf8_to_win_char (int c) {
  if (c < 0x80) {
    return c;
  }
  if (c == 8238 || c == 8236 || c == 8235) return 0xda;
  switch (c & ~0xff) {
    case 0x400: return utf8_to_win_convert_0x400[c & 0xff];
    case 0x2000: return utf8_to_win_convert_0x2000[c & 0xff];
    case 0xff00: return utf8_to_win_convert_0xff00[c & 0xff];
    case 0x2100: return utf8_to_win_convert_0x2100[c & 0xff];
    case 0x000: return utf8_to_win_convert_0x000[c & 0xff];
  }
  return -1;
}
