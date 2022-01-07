
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macio_chip {scalar_t__ type; int flags; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int board_flags; } ;


 long ENODEV ;
 int KL_GPIO_FW_CABLE_POWER ;
 int LOCK (unsigned long) ;
 int MACIO_FLAG_FW_SUPPORTED ;
 int MACIO_IN8 (int ) ;
 int MACIO_OUT8 (int ,int) ;
 int PMAC_MB_HAS_FW_POWER ;
 int UNLOCK (unsigned long) ;
 struct macio_chip* macio_chips ;
 scalar_t__ macio_intrepid ;
 scalar_t__ macio_keylargo ;
 scalar_t__ macio_pangea ;
 int mdelay (int) ;
 TYPE_1__ pmac_mb ;
 int udelay (int) ;

__attribute__((used)) static long
core99_firewire_cable_power(struct device_node *node, long param, long value)
{
 unsigned long flags;
 struct macio_chip *macio;


 if ((pmac_mb.board_flags & PMAC_MB_HAS_FW_POWER) == 0)
  return -ENODEV;
 macio = &macio_chips[0];
 if (macio->type != macio_keylargo && macio->type != macio_pangea &&
     macio->type != macio_intrepid)
  return -ENODEV;
 if (!(macio->flags & MACIO_FLAG_FW_SUPPORTED))
  return -ENODEV;

 LOCK(flags);
 if (value) {
  MACIO_OUT8(KL_GPIO_FW_CABLE_POWER , 0);
  MACIO_IN8(KL_GPIO_FW_CABLE_POWER);
  udelay(10);
 } else {
  MACIO_OUT8(KL_GPIO_FW_CABLE_POWER , 4);
  MACIO_IN8(KL_GPIO_FW_CABLE_POWER); udelay(10);
 }
 UNLOCK(flags);
 mdelay(1);

 return 0;
}
