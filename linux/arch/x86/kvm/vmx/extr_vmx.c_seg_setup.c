
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vmx_segment_field {int ar_bytes; int limit; int base; int selector; } ;


 int VCPU_SREG_CS ;
 struct kvm_vmx_segment_field* kvm_vmx_segment_fields ;
 int vmcs_write16 (int ,int ) ;
 int vmcs_write32 (int ,unsigned int) ;
 int vmcs_writel (int ,int ) ;

__attribute__((used)) static void seg_setup(int seg)
{
 const struct kvm_vmx_segment_field *sf = &kvm_vmx_segment_fields[seg];
 unsigned int ar;

 vmcs_write16(sf->selector, 0);
 vmcs_writel(sf->base, 0);
 vmcs_write32(sf->limit, 0xffff);
 ar = 0x93;
 if (seg == VCPU_SREG_CS)
  ar |= 0x08;

 vmcs_write32(sf->ar_bytes, ar);
}
