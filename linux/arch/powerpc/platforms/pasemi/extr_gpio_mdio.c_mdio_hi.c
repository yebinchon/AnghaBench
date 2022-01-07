
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int MDIO_PIN (struct mii_bus*) ;
 int gpio_regs ;
 int out_le32 (int ,int) ;

__attribute__((used)) static inline void mdio_hi(struct mii_bus *bus)
{
 out_le32(gpio_regs, 1 << MDIO_PIN(bus));
}
