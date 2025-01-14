
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ct_gif ;
 int ct_jpeg ;
 int ct_mov ;
 int ct_mp3 ;
 int ct_mp4 ;
 int ct_partial ;
 int ct_pdf ;
 int ct_png ;
 int ct_unknown ;
 int ct_webp ;

int ext_to_content_type (char ext[4]) {
  int r = ext[0];
  r <<= 8;
  r |= ext[1];
  r <<= 8;
  r |= ext[2];
  r |= 0x202020;
  switch (r) {
    case 0x62696e: return ct_partial;
    case 0x676966: return ct_gif;
    case 0x6a7067: return ct_jpeg;
    case 0x6d7033: return ct_mp3;
    case 0x6d7034: return ct_mp4;
    case 0x6d6f76: return ct_mov;
    case 0x706466: return ct_pdf;
    case 0x706e67: return ct_png;
    case 0x776270: return ct_webp;
  }
  return ct_unknown;
}
