
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_DEST_PHYSICAL ;
 int __default_send_IPI_dest_field (int ,int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int per_cpu (int ,int) ;
 int x86_cpu_to_apicid ;

void default_send_IPI_single_phys(int cpu, int vector)
{
 unsigned long flags;

 local_irq_save(flags);
 __default_send_IPI_dest_field(per_cpu(x86_cpu_to_apicid, cpu),
          vector, APIC_DEST_PHYSICAL);
 local_irq_restore(flags);
}
