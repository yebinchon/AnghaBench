
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_chip {int dummy; } ;


 int mmiowb () ;
 int rbtx4938_spi_gpio_lock ;
 int rbtx4938_spics_addr ;
 int readb (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,int ) ;

__attribute__((used)) static void rbtx4938_spi_gpio_set(struct gpio_chip *chip, unsigned int offset,
      int value)
{
 u8 val;
 unsigned long flags;
 spin_lock_irqsave(&rbtx4938_spi_gpio_lock, flags);
 val = readb(rbtx4938_spics_addr);
 if (value)
  val |= 1 << offset;
 else
  val &= ~(1 << offset);
 writeb(val, rbtx4938_spics_addr);
 mmiowb();
 spin_unlock_irqrestore(&rbtx4938_spi_gpio_lock, flags);
}
