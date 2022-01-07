
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






bool is_vmware_backdoor_pmc(u32 pmc_idx)
{
 switch (pmc_idx) {
 case 129:
 case 128:
 case 130:
  return 1;
 }
 return 0;
}
