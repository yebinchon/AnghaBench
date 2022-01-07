
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charlcd {int dummy; } ;


 int pprt ;
 int pprt_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int udelay (int) ;
 int w_ctr (int ,int) ;

__attribute__((used)) static void lcd_write_cmd_tilcd(struct charlcd *charlcd, int cmd)
{
 spin_lock_irq(&pprt_lock);

 w_ctr(pprt, cmd);
 udelay(60);
 spin_unlock_irq(&pprt_lock);
}
