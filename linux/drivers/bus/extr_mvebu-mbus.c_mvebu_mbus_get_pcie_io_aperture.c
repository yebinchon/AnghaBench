
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {struct resource pcie_io_aperture; } ;


 TYPE_1__ mbus_state ;

void mvebu_mbus_get_pcie_io_aperture(struct resource *res)
{
 if (!res)
  return;
 *res = mbus_state.pcie_io_aperture;
}
