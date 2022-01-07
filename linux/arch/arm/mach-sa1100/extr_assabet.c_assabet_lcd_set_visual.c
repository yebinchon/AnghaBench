
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ u32 ;


 int ASSABET_BCR_LCD_12RGB ;
 int ASSABET_BCR_clear (int ) ;
 int ASSABET_BCR_set (int ) ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;
 scalar_t__ machine_is_assabet () ;

__attribute__((used)) static void assabet_lcd_set_visual(u32 visual)
{
 u_int is_true_color = visual == FB_VISUAL_TRUECOLOR;

 if (machine_is_assabet()) {

  if (is_true_color)
   ASSABET_BCR_set(ASSABET_BCR_LCD_12RGB);
  else
   ASSABET_BCR_clear(ASSABET_BCR_LCD_12RGB);







 }
}
