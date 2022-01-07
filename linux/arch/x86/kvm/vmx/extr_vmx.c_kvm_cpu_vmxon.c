
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int X86_CR4_VMXE ;
 int cr4_set_bits (int ) ;
 int intel_pt_handle_vmx (int) ;

__attribute__((used)) static void kvm_cpu_vmxon(u64 addr)
{
 cr4_set_bits(X86_CR4_VMXE);
 intel_pt_handle_vmx(1);

 asm volatile ("vmxon %0" : : "m"(addr));
}
