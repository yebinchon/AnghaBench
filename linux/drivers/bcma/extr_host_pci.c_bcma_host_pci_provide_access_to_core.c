
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int id; } ;
struct bcma_device {TYPE_2__* bus; TYPE_1__ id; } ;
struct TYPE_4__ {struct bcma_device* mapped_core; } ;




 int BCMA_CORE_SIZE ;
 int bcma_host_pci_switch_core (struct bcma_device*) ;

__attribute__((used)) static u16 bcma_host_pci_provide_access_to_core(struct bcma_device *core)
{
 switch (core->id.id) {
 case 129:
  return 3 * BCMA_CORE_SIZE;
 case 128:
  return 2 * BCMA_CORE_SIZE;
 }

 if (core->bus->mapped_core != core)
  bcma_host_pci_switch_core(core);
 return 0;
}
