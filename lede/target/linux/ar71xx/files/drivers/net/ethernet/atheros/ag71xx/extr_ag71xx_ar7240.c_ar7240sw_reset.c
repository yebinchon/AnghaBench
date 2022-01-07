
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;
struct ar7240sw {struct mii_bus* mii_bus; } ;


 int ADVERTISE_ALL ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int AR7240_MASK_CTRL_SOFT_RESET ;
 int AR7240_NUM_PHYS ;
 int AR7240_NUM_PORTS ;
 int AR7240_REG_MASK_CTRL ;
 int BMCR_ANENABLE ;
 int BMCR_RESET ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int ar7240sw_disable_port (struct ar7240sw*,int) ;
 int ar7240sw_phy_poll_reset (struct mii_bus*) ;
 int ar7240sw_phy_write (struct mii_bus*,int,int ,int) ;
 int ar7240sw_reg_wait (struct mii_bus*,int ,int ,int ,int) ;
 int ar7240sw_reg_write (struct mii_bus*,int ,int ) ;
 int ar7240sw_setup (struct ar7240sw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ar7240sw_reset(struct ar7240sw *as)
{
 struct mii_bus *mii = as->mii_bus;
 int ret;
 int i;


 for (i = 0; i < AR7240_NUM_PORTS; i++)
  ar7240sw_disable_port(as, i);


 usleep_range(2000, 3000);


 ar7240sw_reg_write(mii, AR7240_REG_MASK_CTRL,
      AR7240_MASK_CTRL_SOFT_RESET);

 ret = ar7240sw_reg_wait(mii, AR7240_REG_MASK_CTRL,
    AR7240_MASK_CTRL_SOFT_RESET, 0, 1000);


 for (i = 0; i < AR7240_NUM_PHYS; i++) {
  ar7240sw_phy_write(mii, i, MII_ADVERTISE,
       ADVERTISE_ALL | ADVERTISE_PAUSE_CAP |
       ADVERTISE_PAUSE_ASYM);
  ar7240sw_phy_write(mii, i, MII_BMCR,
       BMCR_RESET | BMCR_ANENABLE);
 }
 ret = ar7240sw_phy_poll_reset(mii);
 if (ret)
  return ret;

 ar7240sw_setup(as);
 return ret;
}
