
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int mmd_write_reg (struct phy_device*,int,int,int) ;

__attribute__((used)) static int ksz9031rn_phy_fixup(struct phy_device *dev)
{




 mmd_write_reg(dev, 2, 4, 0);
 mmd_write_reg(dev, 2, 5, 0);
 mmd_write_reg(dev, 2, 8, 0x003ff);

 return 0;
}
