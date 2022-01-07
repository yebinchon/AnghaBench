
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;


 int BIT (int ) ;
 int GPIO_BIT_DIR ;
 int * gpio_addr ;
 int gpio_lock ;
 int ioread32 (int ) ;
 int iowrite32 (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int gpio_apu2_dir_out (struct gpio_chip *chip, unsigned offset,
  int value)
{
 u32 val;

 spin_lock_bh (&gpio_lock);

 val = ioread32 (gpio_addr[offset]);
 val |= BIT(GPIO_BIT_DIR);
 iowrite32 (val, gpio_addr[offset]);

 spin_unlock_bh (&gpio_lock);

 return 0;
}
