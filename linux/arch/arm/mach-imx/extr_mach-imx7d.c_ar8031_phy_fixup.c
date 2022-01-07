
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int phy_read (struct phy_device*,int) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int ar8031_phy_fixup(struct phy_device *dev)
{
 u16 val;


 phy_write(dev, 0x1d, 0x1f);
 phy_write(dev, 0x1e, 0x8);


 phy_write(dev, 0xd, 0x3);
 phy_write(dev, 0xe, 0x805d);
 phy_write(dev, 0xd, 0x4003);
 val = phy_read(dev, 0xe);
 val &= ~(0x1 << 8);
 phy_write(dev, 0xe, val);

 return 0;
}
