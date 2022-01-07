
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_AP_ONLINE_IDLE ;
 int Dprintk (char*,int ) ;
 int IA64_KR_IO_BASE ;
 int __pa (int ) ;
 int cpu_init () ;
 int cpu_startup_entry (int ) ;
 int efi_map_pal_code () ;
 int hard_smp_processor_id () ;
 int ia64_iobase ;
 int ia64_set_kr (int ,int ) ;
 int preempt_disable () ;
 int smp_callin () ;

int
start_secondary (void *unused)
{

 ia64_set_kr(IA64_KR_IO_BASE, __pa(ia64_iobase));

 Dprintk("start_secondary: starting CPU 0x%x\n", hard_smp_processor_id());

 efi_map_pal_code();
 cpu_init();
 preempt_disable();
 smp_callin();

 cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);
 return 0;
}
