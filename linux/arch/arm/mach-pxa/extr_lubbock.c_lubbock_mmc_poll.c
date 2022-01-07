
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int LUBBOCK_SD_IRQ ;
 int LUB_IRQ_SET_CLR ;
 scalar_t__ MMC_POLL_RATE ;
 int enable_irq (int ) ;
 scalar_t__ jiffies ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mmc_detect_int (int ,int ) ;
 int mmc_detect_int_data ;
 int mmc_timer ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void lubbock_mmc_poll(struct timer_list *unused)
{
 unsigned long flags;


 local_irq_save(flags);
 LUB_IRQ_SET_CLR &= ~(1 << 0);
 local_irq_restore(flags);


 if (LUB_IRQ_SET_CLR & (1 << 0))
  mod_timer(&mmc_timer, jiffies + MMC_POLL_RATE);
 else {
  (void) mmc_detect_int(LUBBOCK_SD_IRQ, mmc_detect_int_data);
  enable_irq(LUBBOCK_SD_IRQ);
 }
}
