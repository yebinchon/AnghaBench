
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mce {int status; int misc; } ;
struct TYPE_2__ {scalar_t__ x86_vendor; } ;


 scalar_t__ MCI_MISC_ADDR_LSB (int ) ;
 scalar_t__ MCI_MISC_ADDR_MODE (int ) ;
 scalar_t__ MCI_MISC_ADDR_PHYS ;
 int MCI_STATUS_ADDRV ;
 int MCI_STATUS_MISCV ;
 scalar_t__ PAGE_SHIFT ;
 scalar_t__ X86_VENDOR_INTEL ;
 TYPE_1__ boot_cpu_data ;

int mce_usable_address(struct mce *m)
{
 if (!(m->status & MCI_STATUS_ADDRV))
  return 0;


 if (boot_cpu_data.x86_vendor != X86_VENDOR_INTEL)
  return 1;

 if (!(m->status & MCI_STATUS_MISCV))
  return 0;

 if (MCI_MISC_ADDR_LSB(m->misc) > PAGE_SHIFT)
  return 0;

 if (MCI_MISC_ADDR_MODE(m->misc) != MCI_MISC_ADDR_PHYS)
  return 0;

 return 1;
}
