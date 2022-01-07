
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPLD_FLASH_WR_ENABLE ;
 int nw_cpld_modify (int ,int ) ;
 int nw_gpio_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void kick_open(void)
{
 unsigned long flags;





 raw_spin_lock_irqsave(&nw_gpio_lock, flags);
 nw_cpld_modify(CPLD_FLASH_WR_ENABLE, CPLD_FLASH_WR_ENABLE);
 raw_spin_unlock_irqrestore(&nw_gpio_lock, flags);




 udelay(25);
}
