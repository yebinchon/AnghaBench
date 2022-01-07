
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARM64_BP_HARDEN_NOT_REQUIRED ;
 int ARM64_BP_HARDEN_UNKNOWN ;
 int ARM64_BP_HARDEN_WA_NEEDED ;
 int __hardenbp_enab ;
 scalar_t__ __spectrev2_safe ;

int get_spectre_v2_workaround_state(void)
{
 if (__spectrev2_safe)
  return ARM64_BP_HARDEN_NOT_REQUIRED;

 if (!__hardenbp_enab)
  return ARM64_BP_HARDEN_UNKNOWN;

 return ARM64_BP_HARDEN_WA_NEEDED;
}
