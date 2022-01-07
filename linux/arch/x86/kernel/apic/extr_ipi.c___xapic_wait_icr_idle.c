
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APIC_ICR ;
 int APIC_ICR_BUSY ;
 int cpu_relax () ;
 int native_apic_mem_read (int ) ;

__attribute__((used)) static inline void __xapic_wait_icr_idle(void)
{
 while (native_apic_mem_read(APIC_ICR) & APIC_ICR_BUSY)
  cpu_relax();
}
