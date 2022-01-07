
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_has_vmx_apic_register_virt () ;
 scalar_t__ cpu_has_vmx_posted_intr () ;
 scalar_t__ cpu_has_vmx_virtual_intr_delivery () ;

__attribute__((used)) static inline bool cpu_has_vmx_apicv(void)
{
 return cpu_has_vmx_apic_register_virt() &&
  cpu_has_vmx_virtual_intr_delivery() &&
  cpu_has_vmx_posted_intr();
}
