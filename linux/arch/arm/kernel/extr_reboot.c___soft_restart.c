
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* phys_reset_t ) (unsigned long,int ) ;


 int BUG () ;
 int cpu_proc_fin () ;
 int cpu_reset ;
 int flush_cache_all () ;
 int is_hyp_mode_available () ;
 int setup_mm_for_reboot () ;
 scalar_t__ virt_to_idmap (int ) ;

__attribute__((used)) static void __soft_restart(void *addr)
{
 phys_reset_t phys_reset;


 setup_mm_for_reboot();


 flush_cache_all();


 cpu_proc_fin();


 flush_cache_all();


 phys_reset = (phys_reset_t)virt_to_idmap(cpu_reset);


 phys_reset((unsigned long)addr, is_hyp_mode_available());


 BUG();
}
