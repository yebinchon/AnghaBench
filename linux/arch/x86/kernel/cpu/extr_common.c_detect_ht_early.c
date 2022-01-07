
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int dummy; } ;


 int X86_FEATURE_CMP_LEGACY ;
 int X86_FEATURE_HT ;
 int X86_FEATURE_XTOPOLOGY ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 int cpuid (int,int*,int*,int*,int*) ;
 int pr_info_once (char*) ;
 int smp_num_siblings ;

int detect_ht_early(struct cpuinfo_x86 *c)
{
 return 0;
}
