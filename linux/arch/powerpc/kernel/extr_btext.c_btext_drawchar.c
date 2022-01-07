
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_text_mapped ;
 int draw_byte (char,int,scalar_t__) ;
 scalar_t__ g_loc_X ;
 scalar_t__ g_loc_Y ;
 scalar_t__ g_max_loc_X ;
 scalar_t__ g_max_loc_Y ;
 int scrollscreen () ;

void btext_drawchar(char c)
{
 int cline = 0;



 if (!boot_text_mapped)
  return;

 switch (c) {
 case '\b':
  if (g_loc_X > 0)
   --g_loc_X;
  break;
 case '\t':
  g_loc_X = (g_loc_X & -8) + 8;
  break;
 case '\r':
  g_loc_X = 0;
  break;
 case '\n':
  g_loc_X = 0;
  g_loc_Y++;
  cline = 1;
  break;
 default:
  draw_byte(c, g_loc_X++, g_loc_Y);
 }
 if (g_loc_X >= g_max_loc_X) {
  g_loc_X = 0;
  g_loc_Y++;
  cline = 1;
 }

 while (g_loc_Y >= g_max_loc_Y) {
  scrollscreen();
  g_loc_Y--;
 }
}
