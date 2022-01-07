
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_memory {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int INTEL_AGPCTRL ;
 TYPE_1__* agp_bridge ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void intel_tlbflush(struct agp_memory *mem)
{
 pci_write_config_dword(agp_bridge->dev, INTEL_AGPCTRL, 0x2200);
 pci_write_config_dword(agp_bridge->dev, INTEL_AGPCTRL, 0x2280);
}
