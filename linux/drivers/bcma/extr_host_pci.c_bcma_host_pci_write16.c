
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct bcma_device {TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ mmio; } ;


 scalar_t__ bcma_host_pci_provide_access_to_core (struct bcma_device*) ;
 int iowrite16 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void bcma_host_pci_write16(struct bcma_device *core, u16 offset,
     u16 value)
{
 offset += bcma_host_pci_provide_access_to_core(core);
 iowrite16(value, core->bus->mmio + offset);
}
