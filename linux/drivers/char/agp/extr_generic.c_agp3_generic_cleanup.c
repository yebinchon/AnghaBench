
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ capndx; int dev; } ;


 scalar_t__ AGPCTRL ;
 int AGPCTRL_APERENB ;
 TYPE_1__* agp_bridge ;
 int pci_read_config_dword (int ,scalar_t__,int*) ;
 int pci_write_config_dword (int ,scalar_t__,int) ;

void agp3_generic_cleanup(void)
{
 u32 ctrl;
 pci_read_config_dword(agp_bridge->dev, agp_bridge->capndx+AGPCTRL, &ctrl);
 pci_write_config_dword(agp_bridge->dev, agp_bridge->capndx+AGPCTRL, ctrl & ~AGPCTRL_APERENB);
}
