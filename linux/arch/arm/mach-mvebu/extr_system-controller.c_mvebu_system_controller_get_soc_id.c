
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ rev_id; scalar_t__ dev_id; } ;


 int ENODEV ;
 TYPE_1__* mvebu_sc ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int readl (scalar_t__) ;
 scalar_t__ system_controller_base ;

int mvebu_system_controller_get_soc_id(u32 *dev, u32 *rev)
{
 if (of_machine_is_compatible("marvell,armada380") &&
  system_controller_base) {
  *dev = readl(system_controller_base + mvebu_sc->dev_id) >> 16;
  *rev = (readl(system_controller_base + mvebu_sc->rev_id) >> 8)
   & 0xF;
  return 0;
 } else
  return -ENODEV;
}
