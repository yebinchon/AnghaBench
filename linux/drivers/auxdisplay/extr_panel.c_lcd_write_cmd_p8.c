
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {int dummy; } ;


 int LCD_BIT_E ;
 int LCD_BIT_RS ;
 int LCD_BIT_RW ;
 int bits ;
 int clear_bit (int ,int ) ;
 int pprt ;
 int pprt_lock ;
 int set_bit (int ,int ) ;
 int set_ctrl_bits () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int udelay (int) ;
 int w_dtr (int ,int) ;

__attribute__((used)) static void lcd_write_cmd_p8(struct charlcd *charlcd, int cmd)
{
 spin_lock_irq(&pprt_lock);

 w_dtr(pprt, cmd);
 udelay(20);

 set_bit(LCD_BIT_E, bits);
 clear_bit(LCD_BIT_RS, bits);
 clear_bit(LCD_BIT_RW, bits);
 set_ctrl_bits();

 udelay(40);

 clear_bit(LCD_BIT_E, bits);
 set_ctrl_bits();

 udelay(120);
 spin_unlock_irq(&pprt_lock);
}
