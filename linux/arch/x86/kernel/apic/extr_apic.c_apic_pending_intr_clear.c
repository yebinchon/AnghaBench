
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union apic_ir {int map; } ;


 int apic_check_and_ack (union apic_ir*,union apic_ir*) ;
 int pr_warn (char*,int ,int ) ;

__attribute__((used)) static void apic_pending_intr_clear(void)
{
 union apic_ir irr, isr;
 unsigned int i;


 for (i = 0; i < 512; i++) {
  if (!apic_check_and_ack(&irr, &isr))
   return;
 }

 pr_warn("APIC: Stale IRR: %256pb ISR: %256pb\n", irr.map, isr.map);
}
