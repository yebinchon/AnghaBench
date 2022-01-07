
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int start; scalar_t__ end; } ;
struct TYPE_4__ {int resource_valid; TYPE_1__ ifp_resource; int bridge_dev; } ;


 scalar_t__ I965_IFPADDR ;
 scalar_t__ PAGE_SIZE ;
 int intel_alloc_chipset_flush_resource () ;
 TYPE_2__ intel_private ;
 int iomem_resource ;
 int pci_read_config_dword (int ,scalar_t__,int*) ;
 int pci_write_config_dword (int ,scalar_t__,int) ;
 int request_resource (int *,TYPE_1__*) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void intel_i965_g33_setup_chipset_flush(void)
{
 u32 temp_hi, temp_lo;
 int ret;

 pci_read_config_dword(intel_private.bridge_dev, I965_IFPADDR + 4, &temp_hi);
 pci_read_config_dword(intel_private.bridge_dev, I965_IFPADDR, &temp_lo);

 if (!(temp_lo & 0x1)) {

  intel_alloc_chipset_flush_resource();

  intel_private.resource_valid = 1;
  pci_write_config_dword(intel_private.bridge_dev, I965_IFPADDR + 4,
   upper_32_bits(intel_private.ifp_resource.start));
  pci_write_config_dword(intel_private.bridge_dev, I965_IFPADDR, (intel_private.ifp_resource.start & 0xffffffff) | 0x1);
 } else {
  u64 l64;

  temp_lo &= ~0x1;
  l64 = ((u64)temp_hi << 32) | temp_lo;

  intel_private.resource_valid = 1;
  intel_private.ifp_resource.start = l64;
  intel_private.ifp_resource.end = l64 + PAGE_SIZE;
  ret = request_resource(&iomem_resource, &intel_private.ifp_resource);

  if (ret)
   intel_private.resource_valid = 0;
 }
}
