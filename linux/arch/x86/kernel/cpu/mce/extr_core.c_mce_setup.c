
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mce {int microcode; int ppin; int mcgcap; int extcpu; int apicid; int socketid; int cpuid; int cpuvendor; int time; int cpu; } ;
struct TYPE_4__ {int microcode; int x86_vendor; } ;
struct TYPE_3__ {int initial_apicid; int phys_proc_id; } ;


 int MSR_IA32_MCG_CAP ;
 int MSR_PPIN ;
 int X86_FEATURE_INTEL_PPIN ;
 int __ktime_get_real_seconds () ;
 TYPE_2__ boot_cpu_data ;
 TYPE_1__ cpu_data (int ) ;
 int cpuid_eax (int) ;
 int memset (struct mce*,int ,int) ;
 int rdmsrl (int ,int ) ;
 int smp_processor_id () ;
 scalar_t__ this_cpu_has (int ) ;

void mce_setup(struct mce *m)
{
 memset(m, 0, sizeof(struct mce));
 m->cpu = m->extcpu = smp_processor_id();

 m->time = __ktime_get_real_seconds();
 m->cpuvendor = boot_cpu_data.x86_vendor;
 m->cpuid = cpuid_eax(1);
 m->socketid = cpu_data(m->extcpu).phys_proc_id;
 m->apicid = cpu_data(m->extcpu).initial_apicid;
 rdmsrl(MSR_IA32_MCG_CAP, m->mcgcap);

 if (this_cpu_has(X86_FEATURE_INTEL_PPIN))
  rdmsrl(MSR_PPIN, m->ppin);

 m->microcode = boot_cpu_data.microcode;
}
