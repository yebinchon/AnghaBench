
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_ATI_RS100 ;
 scalar_t__ PCI_DEVICE_ID_ATI_RS200 ;
 scalar_t__ PCI_DEVICE_ID_ATI_RS200_B ;
 scalar_t__ PCI_DEVICE_ID_ATI_RS250 ;
 TYPE_2__* agp_bridge ;

__attribute__((used)) static int is_r200(void)
{
 if ((agp_bridge->dev->device == PCI_DEVICE_ID_ATI_RS100) ||
     (agp_bridge->dev->device == PCI_DEVICE_ID_ATI_RS200) ||
     (agp_bridge->dev->device == PCI_DEVICE_ID_ATI_RS200_B) ||
     (agp_bridge->dev->device == PCI_DEVICE_ID_ATI_RS250))
  return 1;
 return 0;
}
