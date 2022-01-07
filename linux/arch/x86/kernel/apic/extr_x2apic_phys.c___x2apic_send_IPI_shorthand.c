
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned long __prepare_ICR (int ,int,int ) ;
 int native_x2apic_icr_write (unsigned long,int ) ;
 int x2apic_wrmsr_fence () ;

void __x2apic_send_IPI_shorthand(int vector, u32 which)
{
 unsigned long cfg = __prepare_ICR(which, vector, 0);

 x2apic_wrmsr_fence();
 native_x2apic_icr_write(cfg, 0);
}
