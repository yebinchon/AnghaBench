
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int dir; } ;


 int __raw_readl (int *) ;
 int __raw_writel (int,int *) ;
 int mmiowb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int txx9_gpio_lock ;
 int txx9_gpio_set_raw (unsigned int,int) ;
 TYPE_1__* txx9_pioptr ;

__attribute__((used)) static int txx9_gpio_dir_out(struct gpio_chip *chip, unsigned int offset,
        int value)
{
 unsigned long flags;
 spin_lock_irqsave(&txx9_gpio_lock, flags);
 txx9_gpio_set_raw(offset, value);
 __raw_writel(__raw_readl(&txx9_pioptr->dir) | (1 << offset),
       &txx9_pioptr->dir);
 mmiowb();
 spin_unlock_irqrestore(&txx9_gpio_lock, flags);
 return 0;
}
