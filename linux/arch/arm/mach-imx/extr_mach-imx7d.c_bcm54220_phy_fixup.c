
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int bcm54220_phy_fixup(struct phy_device *dev)
{

 phy_write(dev, 0x1e, 0x21);
 phy_write(dev, 0x1f, 0x7ea8);
 phy_write(dev, 0x1e, 0x2f);
 phy_write(dev, 0x1f, 0x71b7);

 return 0;
}
