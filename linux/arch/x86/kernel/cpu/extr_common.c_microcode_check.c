
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuinfo_x86 {int x86_capability; int cpuid_level; } ;
struct TYPE_2__ {int x86_capability; } ;


 TYPE_1__ boot_cpu_data ;
 int cpuid_eax (int ) ;
 int get_cpu_cap (struct cpuinfo_x86*) ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int perf_check_microcode () ;
 int pr_warn (char*) ;

void microcode_check(void)
{
 struct cpuinfo_x86 info;

 perf_check_microcode();


 info.cpuid_level = cpuid_eax(0);






 memcpy(&info.x86_capability, &boot_cpu_data.x86_capability, sizeof(info.x86_capability));

 get_cpu_cap(&info);

 if (!memcmp(&info.x86_capability, &boot_cpu_data.x86_capability, sizeof(info.x86_capability)))
  return;

 pr_warn("x86/CPU: CPU features have changed after loading microcode, but might not take effect.\n");
 pr_warn("x86/CPU: Please consider either early loading through initrd/built-in or a potential BIOS update.\n");
}
