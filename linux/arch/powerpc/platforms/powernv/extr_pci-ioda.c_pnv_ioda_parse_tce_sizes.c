
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u32 ;
struct pnv_phb {struct pci_controller* hose; } ;
struct pci_controller {struct device_node* dn; } ;
struct device_node {int dummy; } ;


 int CPU_FTR_ARCH_207S ;
 int CPU_FTR_ARCH_300 ;
 unsigned long SZ_16M ;
 unsigned long SZ_256M ;
 unsigned long SZ_4K ;
 unsigned long SZ_64K ;
 scalar_t__ cpu_has_feature (int ) ;
 int of_property_count_u32_elems (struct device_node*,char*) ;
 int of_property_read_u32_index (struct device_node*,char*,int,unsigned long long*) ;

__attribute__((used)) static unsigned long pnv_ioda_parse_tce_sizes(struct pnv_phb *phb)
{
 struct pci_controller *hose = phb->hose;
 struct device_node *dn = hose->dn;
 unsigned long mask = 0;
 int i, rc, count;
 u32 val;

 count = of_property_count_u32_elems(dn, "ibm,supported-tce-sizes");
 if (count <= 0) {
  mask = SZ_4K | SZ_64K;

  if (cpu_has_feature(CPU_FTR_ARCH_207S) &&
    !cpu_has_feature(CPU_FTR_ARCH_300))
   mask |= SZ_16M | SZ_256M;
  return mask;
 }

 for (i = 0; i < count; i++) {
  rc = of_property_read_u32_index(dn, "ibm,supported-tce-sizes",
      i, &val);
  if (rc == 0)
   mask |= 1ULL << val;
 }

 return mask;
}
