
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_info {int mode; int y; int x; } ;
 int force_x ;
 int force_y ;
 int vga_set_14font () ;
 int vga_set_80x30 () ;
 int vga_set_80x34 () ;
 int vga_set_80x43 () ;
 int vga_set_80x60 () ;
 int vga_set_8font () ;
 int vga_set_basic_mode () ;

__attribute__((used)) static int vga_set_mode(struct mode_info *mode)
{

 vga_set_basic_mode();


 force_x = mode->x;
 force_y = mode->y;

 switch (mode->mode) {
 case 134:
  break;
 case 128:
  vga_set_8font();
  break;
 case 130:
  vga_set_80x43();
  break;
 case 133:
  vga_set_14font();
  break;
 case 132:
  vga_set_80x30();
  break;
 case 131:
  vga_set_80x34();
  break;
 case 129:
  vga_set_80x60();
  break;
 }

 return 0;
}
