
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str ;


 int arc_cache_init () ;
 int arc_chk_core_config () ;
 int arc_cpu_mumbojumbo (int,char*,int) ;
 int arc_extn_mumbojumbo (int,char*,int) ;
 int arc_init_IRQ () ;
 int arc_mmu_init () ;
 int arc_platform_smp_cpuinfo () ;
 int pr_info (char*,int ) ;
 int read_arc_build_cfg_regs () ;
 int smp_processor_id () ;

void setup_processor(void)
{
 char str[512];
 int cpu_id = smp_processor_id();

 read_arc_build_cfg_regs();
 arc_init_IRQ();

 pr_info("%s", arc_cpu_mumbojumbo(cpu_id, str, sizeof(str)));

 arc_mmu_init();
 arc_cache_init();

 pr_info("%s", arc_extn_mumbojumbo(cpu_id, str, sizeof(str)));
 pr_info("%s", arc_platform_smp_cpuinfo());

 arc_chk_core_config();
}
