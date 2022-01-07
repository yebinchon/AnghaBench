
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int orig_x; int orig_y; } ;
struct TYPE_4__ {TYPE_1__ screen_info; } ;


 TYPE_2__* boot_params ;
 int cols ;
 scalar_t__ early_serial_base ;
 int lines ;
 int outb (int,scalar_t__) ;
 int scroll () ;
 int serial_putchar (char) ;
 char* vidmem ;
 scalar_t__ vidport ;

void __putstr(const char *s)
{
 int x, y, pos;
 char c;

 if (early_serial_base) {
  const char *str = s;
  while (*str) {
   if (*str == '\n')
    serial_putchar('\r');
   serial_putchar(*str++);
  }
 }

 if (lines == 0 || cols == 0)
  return;

 x = boot_params->screen_info.orig_x;
 y = boot_params->screen_info.orig_y;

 while ((c = *s++) != '\0') {
  if (c == '\n') {
   x = 0;
   if (++y >= lines) {
    scroll();
    y--;
   }
  } else {
   vidmem[(x + cols * y) * 2] = c;
   if (++x >= cols) {
    x = 0;
    if (++y >= lines) {
     scroll();
     y--;
    }
   }
  }
 }

 boot_params->screen_info.orig_x = x;
 boot_params->screen_info.orig_y = y;

 pos = (x + cols * y) * 2;
 outb(14, vidport);
 outb(0xff & (pos >> 9), vidport+1);
 outb(15, vidport);
 outb(0xff & (pos >> 1), vidport+1);
}
