
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BIT (int) ;
 int IR_FIRMODE ;
 int IR_SIRMODE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int lubbock_set_misc_wr (int ,int ) ;
 int pxa2xx_transceiver_mode (struct device*,int) ;

__attribute__((used)) static void lubbock_irda_transceiver_mode(struct device *dev, int mode)
{
 unsigned long flags;

 local_irq_save(flags);
 if (mode & IR_SIRMODE) {
  lubbock_set_misc_wr(BIT(4), 0);
 } else if (mode & IR_FIRMODE) {
  lubbock_set_misc_wr(BIT(4), BIT(4));
 }
 pxa2xx_transceiver_mode(dev, mode);
 local_irq_restore(flags);
}
