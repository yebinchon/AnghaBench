
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int board_flags; } ;


 long EPERM ;
 int MACIO_BIC (int ,int ) ;
 int MACIO_BIS (int ,int ) ;
 int OHARE_FCR ;
 int OH_IOBUS_ENABLE ;
 int PMAC_MB_CAN_SLEEP ;
 struct macio_chip* macio_chips ;
 TYPE_1__ pmac_mb ;

__attribute__((used)) static long ohare_sleep_state(struct device_node *node, long param, long value)
{
 struct macio_chip* macio = &macio_chips[0];

 if ((pmac_mb.board_flags & PMAC_MB_CAN_SLEEP) == 0)
  return -EPERM;
 if (value == 1) {
  MACIO_BIC(OHARE_FCR, OH_IOBUS_ENABLE);
 } else if (value == 0) {
  MACIO_BIS(OHARE_FCR, OH_IOBUS_ENABLE);
 }

 return 0;
}
