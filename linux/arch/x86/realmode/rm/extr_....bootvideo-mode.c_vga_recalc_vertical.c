
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int force_y ;
 int in_idx (int ,int) ;
 int out_idx (int,int ,int) ;
 int rdfs8 (int) ;
 int set_fs (int ) ;
 int vga_crtc () ;

__attribute__((used)) static void vga_recalc_vertical(void)
{
 unsigned int font_size, rows;
 u16 crtc;
 u8 pt, ov;

 set_fs(0);
 font_size = rdfs8(0x485);
 rows = force_y ? force_y : rdfs8(0x484)+1;

 rows *= font_size;
 rows--;

 crtc = vga_crtc();

 pt = in_idx(crtc, 0x11);
 pt &= ~0x80;
 out_idx(pt, crtc, 0x11);

 out_idx((u8)rows, crtc, 0x12);

 ov = in_idx(crtc, 0x07);
 ov &= 0xbd;
 ov |= (rows >> (8-1)) & 0x02;
 ov |= (rows >> (9-6)) & 0x40;
 out_idx(ov, crtc, 0x07);
}
