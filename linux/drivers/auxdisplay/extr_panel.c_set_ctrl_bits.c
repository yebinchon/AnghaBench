
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCD_PORT_C ;
 int lcd_get_bits (int ,int*) ;
 int pprt ;
 int r_ctr (int ) ;
 int w_ctr (int ,int) ;

__attribute__((used)) static int set_ctrl_bits(void)
{
 int val;

 val = r_ctr(pprt);
 lcd_get_bits(LCD_PORT_C, &val);
 w_ctr(pprt, val);
 return val;
}
