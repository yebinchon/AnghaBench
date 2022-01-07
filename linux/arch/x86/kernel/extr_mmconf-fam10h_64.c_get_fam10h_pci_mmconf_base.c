
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct range {int start; int end; } ;
struct TYPE_3__ {unsigned int bus; unsigned int slot; int vendor; int device; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ BASE_VALID (int) ;
 int FAM10H_PCI_MMCONF_BASE ;
 int MMCONF_MASK ;
 int MMCONF_SIZE ;
 int MMCONF_UNIT ;
 int MSR_K8_SYSCFG ;
 int MSR_K8_TOP_MEM2 ;
 int PCI_VENDOR_ID ;
 int cmp_range ;
 int early_pci_allowed () ;
 int fam10h_pci_mmconf_base ;
 int max (int,unsigned long long) ;
 TYPE_1__* pci_probes ;
 int rdmsrl (int,int) ;
 int read_pci_config (unsigned int,unsigned int,int,int) ;
 int sort (struct range*,int,int,int ,int *) ;

__attribute__((used)) static void get_fam10h_pci_mmconf_base(void)
{
 int i;
 unsigned bus;
 unsigned slot;
 int found;

 u64 val;
 u32 address;
 u64 tom2;
 u64 base = FAM10H_PCI_MMCONF_BASE;

 int hi_mmio_num;
 struct range range[8];


 if (fam10h_pci_mmconf_base)
  return;

 if (!early_pci_allowed())
  return;

 found = 0;
 for (i = 0; i < ARRAY_SIZE(pci_probes); i++) {
  u32 id;
  u16 device;
  u16 vendor;

  bus = pci_probes[i].bus;
  slot = pci_probes[i].slot;
  id = read_pci_config(bus, slot, 0, PCI_VENDOR_ID);

  vendor = id & 0xffff;
  device = (id>>16) & 0xffff;
  if (pci_probes[i].vendor == vendor &&
      pci_probes[i].device == device) {
   found = 1;
   break;
  }
 }

 if (!found)
  return;


 address = MSR_K8_SYSCFG;
 rdmsrl(address, val);


 if (!(val & (1<<21))) {
  tom2 = 1ULL << 32;
 } else {

  address = MSR_K8_TOP_MEM2;
  rdmsrl(address, val);
  tom2 = max(val & 0xffffff800000ULL, 1ULL << 32);
 }

 if (base <= tom2)
  base = (tom2 + 2 * MMCONF_UNIT - 1) & MMCONF_MASK;





 hi_mmio_num = 0;
 for (i = 0; i < 8; i++) {
  u32 reg;
  u64 start;
  u64 end;
  reg = read_pci_config(bus, slot, 1, 0x80 + (i << 3));
  if (!(reg & 3))
   continue;

  start = (u64)(reg & 0xffffff00) << 8;
  reg = read_pci_config(bus, slot, 1, 0x84 + (i << 3));
  end = ((u64)(reg & 0xffffff00) << 8) | 0xffff;

  if (end < tom2)
   continue;

  range[hi_mmio_num].start = start;
  range[hi_mmio_num].end = end;
  hi_mmio_num++;
 }

 if (!hi_mmio_num)
  goto out;


 sort(range, hi_mmio_num, sizeof(struct range), cmp_range, ((void*)0));

 if (range[hi_mmio_num - 1].end < base)
  goto out;
 if (range[0].start > base + MMCONF_SIZE)
  goto out;


 base = (range[0].start & MMCONF_MASK) - MMCONF_UNIT;
 if ((base > tom2) && BASE_VALID(base))
  goto out;
 base = (range[hi_mmio_num - 1].end + MMCONF_UNIT) & MMCONF_MASK;
 if (BASE_VALID(base))
  goto out;

 for (i = 1; i < hi_mmio_num; i++) {
  base = (range[i - 1].end + MMCONF_UNIT) & MMCONF_MASK;
  val = range[i].start & MMCONF_MASK;
  if (val >= base + MMCONF_SIZE && BASE_VALID(base))
   goto out;
 }
 return;

out:
 fam10h_pci_mmconf_base = base;
}
