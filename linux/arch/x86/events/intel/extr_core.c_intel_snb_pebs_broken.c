
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pebs_ucodes ;
 int x86_cpu_has_min_microcode_rev (int ) ;

__attribute__((used)) static bool intel_snb_pebs_broken(void)
{
 return !x86_cpu_has_min_microcode_rev(pebs_ucodes);
}
