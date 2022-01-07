
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mce {int microcode; int cpuid; int time; int cpuvendor; } ;
struct TYPE_2__ {int microcode; int x86_vendor; } ;


 TYPE_1__ boot_cpu_data ;
 int cpuid_eax (int) ;
 int ktime_get_real_seconds () ;
 int memset (struct mce*,int ,int) ;

__attribute__((used)) static void setup_inj_struct(struct mce *m)
{
 memset(m, 0, sizeof(struct mce));

 m->cpuvendor = boot_cpu_data.x86_vendor;
 m->time = ktime_get_real_seconds();
 m->cpuid = cpuid_eax(1);
 m->microcode = boot_cpu_data.microcode;
}
