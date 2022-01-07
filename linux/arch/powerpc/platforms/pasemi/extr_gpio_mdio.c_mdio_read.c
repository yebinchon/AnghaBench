
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int MDIO_PIN (struct mii_bus*) ;
 scalar_t__ gpio_regs ;
 int in_le32 (scalar_t__) ;

__attribute__((used)) static inline int mdio_read(struct mii_bus *bus)
{
 return !!(in_le32(gpio_regs+0x40) & (1 << MDIO_PIN(bus)));
}
