
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_ICR ;
 int NMI_VECTOR ;
 unsigned int __prepare_ICR (unsigned int,int,int ) ;
 int __xapic_wait_icr_idle () ;
 int native_apic_mem_write (int ,unsigned int) ;
 int safe_apic_wait_icr_idle () ;
 scalar_t__ unlikely (int) ;

void __default_send_IPI_shortcut(unsigned int shortcut, int vector)
{







 unsigned int cfg;




 if (unlikely(vector == NMI_VECTOR))
  safe_apic_wait_icr_idle();
 else
  __xapic_wait_icr_idle();





 cfg = __prepare_ICR(shortcut, vector, 0);




 native_apic_mem_write(APIC_ICR, cfg);
}
