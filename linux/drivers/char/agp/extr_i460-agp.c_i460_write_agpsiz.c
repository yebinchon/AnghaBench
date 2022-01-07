
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dev; } ;


 int I460_AGPSIZ_MASK ;
 int INTEL_I460_AGPSIZ ;
 TYPE_1__* agp_bridge ;
 int pci_read_config_byte (int ,int ,int*) ;
 int pci_write_config_byte (int ,int ,int) ;

__attribute__((used)) static void i460_write_agpsiz (u8 size_value)
{
 u8 temp;

 pci_read_config_byte(agp_bridge->dev, INTEL_I460_AGPSIZ, &temp);
 pci_write_config_byte(agp_bridge->dev, INTEL_I460_AGPSIZ,
         ((temp & ~I460_AGPSIZ_MASK) | size_value));
}
