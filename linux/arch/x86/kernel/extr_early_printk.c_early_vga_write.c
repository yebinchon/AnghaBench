
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 scalar_t__ VGABASE ;
 int current_xpos ;
 int current_ypos ;
 int max_xpos ;
 int max_ypos ;
 int readw (scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void early_vga_write(struct console *con, const char *str, unsigned n)
{
 char c;
 int i, k, j;

 while ((c = *str++) != '\0' && n-- > 0) {
  if (current_ypos >= max_ypos) {

   for (k = 1, j = 0; k < max_ypos; k++, j++) {
    for (i = 0; i < max_xpos; i++) {
     writew(readw(VGABASE+2*(max_xpos*k+i)),
            VGABASE + 2*(max_xpos*j + i));
    }
   }
   for (i = 0; i < max_xpos; i++)
    writew(0x720, VGABASE + 2*(max_xpos*j + i));
   current_ypos = max_ypos-1;
  }
  if (c == '\n') {
   current_xpos = 0;
   current_ypos++;
  } else if (c != '\r') {
   writew(((0x7 << 8) | (unsigned short) c),
          VGABASE + 2*(max_xpos*current_ypos +
      current_xpos++));
   if (current_xpos >= max_xpos) {
    current_xpos = 0;
    current_ypos++;
   }
  }
 }
}
