
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int inb (int) ;

u16 vga_crtc(void)
{
 return (inb(0x3cc) & 1) ? 0x3d4 : 0x3b4;
}
