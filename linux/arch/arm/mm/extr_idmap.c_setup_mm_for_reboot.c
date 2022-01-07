
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_switch_mm (int ,int *) ;
 int idmap_pgd ;
 int init_mm ;
 int local_flush_bp_all () ;
 int local_flush_tlb_all () ;

void setup_mm_for_reboot(void)
{

 cpu_switch_mm(idmap_pgd, &init_mm);
 local_flush_bp_all();
}
