
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 scalar_t__ MMC_POLL_RATE ;
 int disable_irq (int) ;
 scalar_t__ jiffies ;
 int mmc_detect_int (int,void*) ;
 int mmc_timer ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static irqreturn_t lubbock_detect_int(int irq, void *data)
{

 disable_irq(irq);
 mod_timer(&mmc_timer, jiffies + MMC_POLL_RATE);

 return mmc_detect_int(irq, data);
}
