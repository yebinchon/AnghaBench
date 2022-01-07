
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int BMCR_PDOWN ;
 int ar8031_phy_fixup (struct phy_device*) ;
 int phy_read (struct phy_device*,int) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int ar8035_phy_fixup(struct phy_device *dev)
{
 u16 val;




 phy_write(dev, 0xd, 0x3);
 phy_write(dev, 0xe, 0x805d);
 phy_write(dev, 0xd, 0x4003);

 val = phy_read(dev, 0xe);
 phy_write(dev, 0xe, val & ~(1 << 8));
 ar8031_phy_fixup(dev);


 val = phy_read(dev, 0x0);
 if (val & BMCR_PDOWN)
  phy_write(dev, 0x0, val & ~BMCR_PDOWN);

 return 0;
}
