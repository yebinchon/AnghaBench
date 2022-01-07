
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct kvm_vcpu {int dummy; } ;


 int VCPU_SREG_CS ;
 unsigned long get_segment_base (struct kvm_vcpu*,int ) ;
 scalar_t__ is_64_bit_mode (struct kvm_vcpu*) ;
 unsigned long kvm_rip_read (struct kvm_vcpu*) ;

unsigned long kvm_get_linear_rip(struct kvm_vcpu *vcpu)
{
 if (is_64_bit_mode(vcpu))
  return kvm_rip_read(vcpu);
 return (u32)(get_segment_base(vcpu, VCPU_SREG_CS) +
       kvm_rip_read(vcpu));
}
