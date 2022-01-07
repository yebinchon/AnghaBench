
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct agp_bridge_data {int major_version; int mode; int minor_version; TYPE_1__* dev; scalar_t__ capndx; } ;
struct TYPE_7__ {scalar_t__ capndx; TYPE_1__* dev; int minor_version; int major_version; } ;
struct TYPE_6__ {int dev; } ;


 scalar_t__ AGPCTRL ;
 int AGPSTAT_AGP_ENABLE ;
 int AGPSTAT_MODE_3_0 ;
 scalar_t__ PCI_AGP_STATUS ;
 int agp_3_5_enable (struct agp_bridge_data*) ;
 TYPE_3__* agp_bridge ;
 int agp_collect_device_status (TYPE_3__*,int,int) ;
 int agp_device_command (int,int) ;
 int dev_info (int *,char*,...) ;
 int get_agp_version (TYPE_3__*) ;
 int pci_read_config_dword (TYPE_1__*,scalar_t__,int*) ;
 int pci_write_config_dword (TYPE_1__*,scalar_t__,int) ;

void agp_generic_enable(struct agp_bridge_data *bridge, u32 requested_mode)
{
 u32 bridge_agpstat, temp;

 get_agp_version(agp_bridge);

 dev_info(&agp_bridge->dev->dev, "AGP %d.%d bridge\n",
   agp_bridge->major_version, agp_bridge->minor_version);

 pci_read_config_dword(agp_bridge->dev,
        agp_bridge->capndx + PCI_AGP_STATUS, &bridge_agpstat);

 bridge_agpstat = agp_collect_device_status(agp_bridge, requested_mode, bridge_agpstat);
 if (bridge_agpstat == 0)

  return;

 bridge_agpstat |= AGPSTAT_AGP_ENABLE;


 if (bridge->major_version >= 3) {
  if (bridge->mode & AGPSTAT_MODE_3_0) {

   if (bridge->minor_version >= 5)
    agp_3_5_enable(bridge);
   agp_device_command(bridge_agpstat, 1);
   return;
  } else {

      bridge_agpstat &= ~(7<<10) ;
      pci_read_config_dword(bridge->dev,
     bridge->capndx+AGPCTRL, &temp);
      temp |= (1<<9);
      pci_write_config_dword(bridge->dev,
     bridge->capndx+AGPCTRL, temp);

      dev_info(&bridge->dev->dev, "bridge is in legacy mode, falling back to 2.x\n");
  }
 }


 agp_device_command(bridge_agpstat, 0);
}
