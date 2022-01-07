
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ model_id; } ;


 long ENODEV ;
 int HEATHROW_FCR ;
 int HRW_SOUND_CLK_ENABLE ;
 int HRW_SOUND_POWER_N ;
 int LOCK (unsigned long) ;
 int MACIO_BIC (int ,int ) ;
 int MACIO_BIS (int ,int ) ;
 int MACIO_IN32 (int ) ;
 scalar_t__ PMAC_TYPE_YIKES ;
 scalar_t__ PMAC_TYPE_YOSEMITE ;
 int UNLOCK (unsigned long) ;
 struct macio_chip* macio_find (struct device_node*,int ) ;
 TYPE_1__ pmac_mb ;

__attribute__((used)) static long heathrow_sound_enable(struct device_node *node, long param,
      long value)
{
 struct macio_chip* macio;
 unsigned long flags;




 if (pmac_mb.model_id == PMAC_TYPE_YOSEMITE ||
     pmac_mb.model_id == PMAC_TYPE_YIKES)
  return 0;

 macio = macio_find(node, 0);
 if (!macio)
  return -ENODEV;
 if (value) {
  LOCK(flags);
  MACIO_BIS(HEATHROW_FCR, HRW_SOUND_CLK_ENABLE);
  MACIO_BIC(HEATHROW_FCR, HRW_SOUND_POWER_N);
  UNLOCK(flags);
  (void)MACIO_IN32(HEATHROW_FCR);
 } else {
  LOCK(flags);
  MACIO_BIS(HEATHROW_FCR, HRW_SOUND_POWER_N);
  MACIO_BIC(HEATHROW_FCR, HRW_SOUND_CLK_ENABLE);
  UNLOCK(flags);
 }
 return 0;
}
