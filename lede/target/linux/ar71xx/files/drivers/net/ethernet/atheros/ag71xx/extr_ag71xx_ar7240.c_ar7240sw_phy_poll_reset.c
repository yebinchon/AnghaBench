
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int dummy; } ;


 int AR7240_NUM_PHYS ;
 int BMCR_RESET ;
 int ETIMEDOUT ;
 int MII_BMCR ;
 int ar7240sw_phy_read (struct mii_bus*,int,int ) ;
 int msleep (unsigned int const) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int
ar7240sw_phy_poll_reset(struct mii_bus *bus)
{
 const unsigned int sleep_msecs = 20;
 int ret, elapsed, i;

 for (elapsed = sleep_msecs; elapsed <= 600;
      elapsed += sleep_msecs) {
  msleep(sleep_msecs);
  for (i = 0; i < AR7240_NUM_PHYS; i++) {
   ret = ar7240sw_phy_read(bus, i, MII_BMCR);
   if (ret < 0)
    return ret;
   if (ret & BMCR_RESET)
    break;
   if (i == AR7240_NUM_PHYS - 1) {
    usleep_range(1000, 2000);
    return 0;
   }
  }
 }
 return -ETIMEDOUT;
}
