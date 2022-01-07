
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mce {int dummy; } ;
struct TYPE_2__ {scalar_t__ x86_vendor; } ;


 scalar_t__ X86_VENDOR_AMD ;
 int amd_filter_mce (struct mce*) ;
 TYPE_1__ boot_cpu_data ;

bool filter_mce(struct mce *m)
{
 if (boot_cpu_data.x86_vendor == X86_VENDOR_AMD)
  return amd_filter_mce(m);

 return 0;
}
