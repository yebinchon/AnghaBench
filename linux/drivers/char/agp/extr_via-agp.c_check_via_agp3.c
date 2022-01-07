
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct agp_bridge_data {int * driver; int dev; } ;


 int VIA_AGPSEL ;
 int pci_read_config_byte (int ,int ,int*) ;
 int via_agp3_driver ;

__attribute__((used)) static void check_via_agp3 (struct agp_bridge_data *bridge)
{
 u8 reg;

 pci_read_config_byte(bridge->dev, VIA_AGPSEL, &reg);

 if ((reg & (1<<1))==0)
  bridge->driver = &via_agp3_driver;
}
