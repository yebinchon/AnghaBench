
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {int height; int hwidth; } ;


 int lcd_send_serial (char) ;
 int pprt_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int udelay (int) ;

__attribute__((used)) static void lcd_clear_fast_s(struct charlcd *charlcd)
{
 int pos;

 spin_lock_irq(&pprt_lock);
 for (pos = 0; pos < charlcd->height * charlcd->hwidth; pos++) {
  lcd_send_serial(0x5F);
  lcd_send_serial(' ' & 0x0F);
  lcd_send_serial((' ' >> 4) & 0x0F);

  udelay(40);
 }
 spin_unlock_irq(&pprt_lock);
}
