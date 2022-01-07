
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_buff_char (char) ;
 int write_buff_char_2 (char,char) ;
 int write_buff_char_3 (int,int,int) ;
 int write_buff_char_4 (int,int,int,int) ;
 int write_buff_long (int) ;

void write_char_utf8 (int c) {

  if (!c) {



    return;
  }






  if (c < 128) {
    write_buff_char (c);
    return;
  }
  if (c < 0x800) {
    write_buff_char_2 (0xc0 + (c >> 6), 0x80 + (c & 63));
    return;
  }
  if (c < 0x10000) {
    write_buff_char_3 (0xe0 + (c >> 12), 0x80 + ((c >> 6) & 63), 0x80 + (c & 63));
    return;
  }
  if (c >= 0x1f000 && c <= 0x1f6c0) {
    write_buff_char_4 (0xf0 + (c >> 18), 0x80 + ((c >> 12) & 63), 0x80 + ((c >> 6) & 63), 0x80 + (c & 63));
    return;
  }
  write_buff_char_2 ('$', '#');
  write_buff_long (c);
  write_buff_char (';');
}
