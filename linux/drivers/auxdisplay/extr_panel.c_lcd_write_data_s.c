
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {int dummy; } ;


 int lcd_send_serial (int) ;
 int pprt_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int udelay (int) ;

__attribute__((used)) static void lcd_write_data_s(struct charlcd *charlcd, int data)
{
 spin_lock_irq(&pprt_lock);
 lcd_send_serial(0x5F);
 lcd_send_serial(data & 0x0F);
 lcd_send_serial((data >> 4) & 0x0F);
 udelay(40);
 spin_unlock_irq(&pprt_lock);
}
