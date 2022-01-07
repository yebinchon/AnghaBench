
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_BUG_ITLB_MULTIHIT ;
 scalar_t__ boot_cpu_has_bug (int ) ;
 int cpu_mitigations_off () ;

__attribute__((used)) static bool get_nx_auto_mode(void)
{

 return boot_cpu_has_bug(X86_BUG_ITLB_MULTIHIT) && !cpu_mitigations_off();
}
