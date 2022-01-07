
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct agp_memory {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int U3_N_CFG_GART_PERFRD ;
 int UNI_N_CFG_GART_2xRESET ;
 int UNI_N_CFG_GART_CTRL ;
 int UNI_N_CFG_GART_ENABLE ;
 int UNI_N_CFG_GART_INVAL ;
 TYPE_1__* agp_bridge ;
 scalar_t__ is_u3 ;
 int pci_write_config_dword (int ,int ,int) ;
 int uninorth_rev ;

__attribute__((used)) static void uninorth_tlbflush(struct agp_memory *mem)
{
 u32 ctrl = UNI_N_CFG_GART_ENABLE;

 if (is_u3)
  ctrl |= U3_N_CFG_GART_PERFRD;
 pci_write_config_dword(agp_bridge->dev, UNI_N_CFG_GART_CTRL,
          ctrl | UNI_N_CFG_GART_INVAL);
 pci_write_config_dword(agp_bridge->dev, UNI_N_CFG_GART_CTRL, ctrl);

 if (!mem && uninorth_rev <= 0x30) {
  pci_write_config_dword(agp_bridge->dev, UNI_N_CFG_GART_CTRL,
           ctrl | UNI_N_CFG_GART_2xRESET);
  pci_write_config_dword(agp_bridge->dev, UNI_N_CFG_GART_CTRL,
           ctrl);
 }
}
