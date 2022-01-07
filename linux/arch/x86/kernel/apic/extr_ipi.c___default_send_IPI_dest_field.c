
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_ICR ;
 int APIC_ICR2 ;
 int NMI_VECTOR ;
 unsigned long __prepare_ICR (int ,int,unsigned int) ;
 unsigned long __prepare_ICR2 (unsigned int) ;
 int __xapic_wait_icr_idle () ;
 int native_apic_mem_write (int ,unsigned long) ;
 int safe_apic_wait_icr_idle () ;
 scalar_t__ unlikely (int) ;

void __default_send_IPI_dest_field(unsigned int mask, int vector, unsigned int dest)
{
 unsigned long cfg;




 if (unlikely(vector == NMI_VECTOR))
  safe_apic_wait_icr_idle();
 else
  __xapic_wait_icr_idle();




 cfg = __prepare_ICR2(mask);
 native_apic_mem_write(APIC_ICR2, cfg);




 cfg = __prepare_ICR(0, vector, dest);




 native_apic_mem_write(APIC_ICR, cfg);
}
