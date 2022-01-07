
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {int height; int hwidth; } ;


 int pprt ;
 int pprt_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int udelay (int) ;
 int w_dtr (int ,char) ;

__attribute__((used)) static void lcd_clear_fast_tilcd(struct charlcd *charlcd)
{
 int pos;

 spin_lock_irq(&pprt_lock);
 for (pos = 0; pos < charlcd->height * charlcd->hwidth; pos++) {

  w_dtr(pprt, ' ');
  udelay(60);
 }

 spin_unlock_irq(&pprt_lock);
}
