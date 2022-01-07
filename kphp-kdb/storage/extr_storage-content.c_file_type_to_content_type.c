
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ct_gif ;
 int ct_jpeg ;
 int ct_last ;
 int ct_mov ;
 int ct_mp3 ;
 int ct_mp4 ;
 int ct_partial ;
 int ct_pdf ;
 int ct_png ;
 int ct_unknown ;
 int ct_webp ;

int file_type_to_content_type (int file_type) {
  switch (file_type) {
    case 129: return ct_unknown;
    case 136: return ct_jpeg;
    case 137: return ct_gif;
    case 130: return ct_png;
    case 131: return ct_pdf;
    case 134: return ct_mp3;
    case 135: return ct_mov;
    case 133: return ct_mp4;
    case 132: return ct_partial;
    case 128: return ct_webp;
  }
  return ct_last | 0x40000000;
}
