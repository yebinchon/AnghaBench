
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BIT_CLR ;
 size_t BIT_MSK ;
 unsigned int BIT_SET ;
 unsigned int LCD_BITS ;
 int bits ;
 int*** lcd_bits ;
 scalar_t__ test_bit (unsigned int,int ) ;

__attribute__((used)) static void lcd_get_bits(unsigned int port, int *val)
{
 unsigned int bit, state;

 for (bit = 0; bit < LCD_BITS; bit++) {
  state = test_bit(bit, bits) ? BIT_SET : BIT_CLR;
  *val &= lcd_bits[port][bit][BIT_MSK];
  *val |= lcd_bits[port][bit][state];
 }
}
