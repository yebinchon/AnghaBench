
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct cpuinfo_x86 {int x86_model; int x86_stepping; } ;


 int MSR_K6_WHCR ;
 int OPTIMIZER_HIDE_VAR (void (*) ()) ;
 int PAGE_SHIFT ;
 int X86_FEATURE_APIC ;
 int X86_FEATURE_PGE ;
 int clear_cpu_cap (struct cpuinfo_x86*,int ) ;
 int get_num_physpages () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pr_cont (char*) ;
 int pr_info (char*,...) ;
 int rdmsr (int ,int,int) ;
 int rdtsc () ;
 int set_cpu_cap (struct cpuinfo_x86*,int ) ;
 void vide () ;
 int wbinvd () ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void init_amd_k6(struct cpuinfo_x86 *c)
{
}
