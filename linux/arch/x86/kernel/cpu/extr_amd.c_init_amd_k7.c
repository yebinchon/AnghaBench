
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpuinfo_x86 {int x86_model; int x86_stepping; int cpu_index; } ;


 int LOCKDEP_NOW_UNRELIABLE ;
 int MSR_K7_CLK_CTL ;
 int MSR_K7_HWCR ;
 int TAINT_CPU_OUT_OF_SPEC ;
 int WARN_ONCE (int,char*) ;
 int X86_FEATURE_MP ;
 int X86_FEATURE_XMM ;
 int add_taint (int ,int ) ;
 scalar_t__ cpu_has (struct cpuinfo_x86*,int ) ;
 int msr_clear_bit (int ,int) ;
 int pr_info (char*,...) ;
 int rdmsr (int ,int,int) ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void init_amd_k7(struct cpuinfo_x86 *c)
{
}
