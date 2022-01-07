
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct vendor_error_type_extension {int pcie_sbdf; int vendor_id; int device_id; int rev_id; } ;
struct set_error_type_with_address {int vendor_extension; } ;


 struct vendor_error_type_extension* acpi_os_map_iomem (scalar_t__,int) ;
 int acpi_os_unmap_iomem (struct vendor_error_type_extension*,int) ;
 int sprintf (int ,char*,int,int,int,int,int,int,int) ;
 int vendor_dev ;

__attribute__((used)) static void check_vendor_extension(u64 paddr,
       struct set_error_type_with_address *v5param)
{
 int offset = v5param->vendor_extension;
 struct vendor_error_type_extension *v;
 u32 sbdf;

 if (!offset)
  return;
 v = acpi_os_map_iomem(paddr + offset, sizeof(*v));
 if (!v)
  return;
 sbdf = v->pcie_sbdf;
 sprintf(vendor_dev, "%x:%x:%x.%x vendor_id=%x device_id=%x rev_id=%x\n",
  sbdf >> 24, (sbdf >> 16) & 0xff,
  (sbdf >> 11) & 0x1f, (sbdf >> 8) & 0x7,
   v->vendor_id, v->device_id, v->rev_id);
 acpi_os_unmap_iomem(v, sizeof(*v));
}
