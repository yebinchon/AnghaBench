
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_chip {scalar_t__ type; } ;
struct device_node {int dummy; } ;


 long ENODEV ;
 int KEYLARGO_GPIO_OUTOUT_DATA ;
 int KEYLARGO_GPIO_OUTPUT_ENABLE ;
 int KL_GPIO_ETH_PHY_RESET ;
 int LOCK (unsigned long) ;
 int MACIO_IN8 (int ) ;
 int MACIO_OUT8 (int ,int ) ;
 int UNLOCK (unsigned long) ;
 struct macio_chip* macio_chips ;
 scalar_t__ macio_intrepid ;
 scalar_t__ macio_keylargo ;
 scalar_t__ macio_pangea ;
 int mdelay (int) ;

__attribute__((used)) static long
core99_gmac_phy_reset(struct device_node *node, long param, long value)
{
 unsigned long flags;
 struct macio_chip *macio;

 macio = &macio_chips[0];
 if (macio->type != macio_keylargo && macio->type != macio_pangea &&
     macio->type != macio_intrepid)
  return -ENODEV;

 LOCK(flags);
 MACIO_OUT8(KL_GPIO_ETH_PHY_RESET, KEYLARGO_GPIO_OUTPUT_ENABLE);
 (void)MACIO_IN8(KL_GPIO_ETH_PHY_RESET);
 UNLOCK(flags);
 mdelay(10);
 LOCK(flags);
 MACIO_OUT8(KL_GPIO_ETH_PHY_RESET,
  KEYLARGO_GPIO_OUTOUT_DATA);
 UNLOCK(flags);
 mdelay(10);

 return 0;
}
