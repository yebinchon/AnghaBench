
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMI_VECTOR ;
 int REBOOT_VECTOR ;
 int USEC_PER_MSEC ;
 unsigned long USEC_PER_SEC ;
 int apic_send_IPI_allbutself (int ) ;
 int atomic_cmpxchg (int *,int,int ) ;
 int cpu_info ;
 int disable_local_APIC () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mcheck_cpu_clear (int ) ;
 int num_online_cpus () ;
 int pr_emerg (char*) ;
 scalar_t__ reboot_force ;
 int register_stop_handler () ;
 int safe_smp_processor_id () ;
 int smp_no_nmi_ipi ;
 int stopping_cpu ;
 int this_cpu_ptr (int *) ;
 int udelay (int) ;
 int wmb () ;

__attribute__((used)) static void native_stop_other_cpus(int wait)
{
 unsigned long flags;
 unsigned long timeout;

 if (reboot_force)
  return;
 if (num_online_cpus() > 1) {

  if (atomic_cmpxchg(&stopping_cpu, -1, safe_smp_processor_id()) != -1)
   return;


  wmb();

  apic_send_IPI_allbutself(REBOOT_VECTOR);







  timeout = USEC_PER_SEC;
  while (num_online_cpus() > 1 && timeout--)
   udelay(1);
 }


 if (num_online_cpus() > 1) {





  if (!smp_no_nmi_ipi && !register_stop_handler()) {

   wmb();

   pr_emerg("Shutting down cpus with NMI\n");

   apic_send_IPI_allbutself(NMI_VECTOR);
  }





  timeout = USEC_PER_MSEC * 10;
  while (num_online_cpus() > 1 && (wait || timeout--))
   udelay(1);
 }

 local_irq_save(flags);
 disable_local_APIC();
 mcheck_cpu_clear(this_cpu_ptr(&cpu_info));
 local_irq_restore(flags);
}
