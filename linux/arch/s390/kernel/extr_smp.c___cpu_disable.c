
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CIF_NOHZ_DELAY ;
 int __ctl_load (unsigned long*,int ,int) ;
 int __ctl_store (unsigned long*,int ,int) ;
 int clear_cpu_flag (int ) ;
 int pfault_fini () ;
 int set_cpu_online (int ,int) ;
 int smp_handle_ext_call () ;
 int smp_processor_id () ;

int __cpu_disable(void)
{
 unsigned long cregs[16];


 smp_handle_ext_call();
 set_cpu_online(smp_processor_id(), 0);

 pfault_fini();

 __ctl_store(cregs, 0, 15);
 cregs[0] &= ~0x0000ee70UL;
 cregs[6] &= ~0xff000000UL;
 cregs[14] &= ~0x1f000000UL;
 __ctl_load(cregs, 0, 15);
 clear_cpu_flag(CIF_NOHZ_DELAY);
 return 0;
}
