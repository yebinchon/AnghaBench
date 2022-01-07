
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DEST_PHYSICAL ;
 unsigned int APIC_DM_FIXED ;
 unsigned int APIC_DM_NMI ;
 int NMI_VECTOR ;
 int NUMACHIP_LAPIC_BITS ;
 int __default_send_IPI_dest_field (int,int,int ) ;
 int __this_cpu_read (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int numachip_apic_icr_write (int,unsigned int) ;
 int per_cpu (int ,int) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int x86_cpu_to_apicid ;

__attribute__((used)) static void numachip_send_IPI_one(int cpu, int vector)
{
 int local_apicid, apicid = per_cpu(x86_cpu_to_apicid, cpu);
 unsigned int dmode;

 preempt_disable();
 local_apicid = __this_cpu_read(x86_cpu_to_apicid);


 if (!((apicid ^ local_apicid) >> NUMACHIP_LAPIC_BITS)) {
  unsigned long flags;

  local_irq_save(flags);
  __default_send_IPI_dest_field(apicid, vector,
   APIC_DEST_PHYSICAL);
  local_irq_restore(flags);
  preempt_enable();
  return;
 }
 preempt_enable();

 dmode = (vector == NMI_VECTOR) ? APIC_DM_NMI : APIC_DM_FIXED;
 numachip_apic_icr_write(apicid, dmode | vector);
}
