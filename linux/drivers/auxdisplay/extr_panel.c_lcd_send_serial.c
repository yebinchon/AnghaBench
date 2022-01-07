
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCD_BIT_CL ;
 int LCD_BIT_DA ;
 int bits ;
 int clear_bit (int ,int ) ;
 int panel_set_bits () ;
 int set_bit (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void lcd_send_serial(int byte)
{
 int bit;





 for (bit = 0; bit < 8; bit++) {
  clear_bit(LCD_BIT_CL, bits);
  panel_set_bits();
  if (byte & 1) {
   set_bit(LCD_BIT_DA, bits);
  } else {
   clear_bit(LCD_BIT_DA, bits);
  }

  panel_set_bits();
  udelay(2);
  set_bit(LCD_BIT_CL, bits);
  panel_set_bits();
  udelay(1);
  byte >>= 1;
 }
}
