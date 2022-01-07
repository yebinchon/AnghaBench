
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCD_PORT_D ;
 int lcd_get_bits (int ,int*) ;
 int pprt ;
 int r_dtr (int ) ;
 int w_dtr (int ,int) ;

__attribute__((used)) static int set_data_bits(void)
{
 int val;

 val = r_dtr(pprt);
 lcd_get_bits(LCD_PORT_D, &val);
 w_dtr(pprt, val);
 return val;
}
