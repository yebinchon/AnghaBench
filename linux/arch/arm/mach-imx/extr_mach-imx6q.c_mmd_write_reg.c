
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
{
 phy_write(dev, 0x0d, device);
 phy_write(dev, 0x0e, reg);
 phy_write(dev, 0x0d, (1 << 14) | device);
 phy_write(dev, 0x0e, val);
}
