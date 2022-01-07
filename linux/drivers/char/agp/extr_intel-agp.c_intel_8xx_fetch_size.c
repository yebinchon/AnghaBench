
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int dev; } ;


 int INTEL_APSIZE ;
 int __intel_8xx_fetch_size (int ) ;
 TYPE_1__* agp_bridge ;
 int pci_read_config_byte (int ,int ,int *) ;

__attribute__((used)) static int intel_8xx_fetch_size(void)
{
 u8 temp;

 pci_read_config_byte(agp_bridge->dev, INTEL_APSIZE, &temp);
 return __intel_8xx_fetch_size(temp);
}
