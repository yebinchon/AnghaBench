
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {scalar_t__ type; } ;


 scalar_t__ KEXEC_TYPE_CRASH ;
 int __arch_local_irq_stosm (int) ;
 int __do_machine_kexec (void*) ;
 int __machine_kdump (void*) ;
 int debug_locks_off () ;
 int pfault_fini () ;
 int tracing_off () ;

__attribute__((used)) static void __machine_kexec(void *data)
{
 __arch_local_irq_stosm(0x04);
 pfault_fini();
 tracing_off();
 debug_locks_off();




 __do_machine_kexec(data);
}
