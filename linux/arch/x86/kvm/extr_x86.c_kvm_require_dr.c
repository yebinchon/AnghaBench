
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int UD_VECTOR ;
 int X86_CR4_DE ;
 int kvm_queue_exception (struct kvm_vcpu*,int ) ;
 int kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;

bool kvm_require_dr(struct kvm_vcpu *vcpu, int dr)
{
 if ((dr != 4 && dr != 5) || !kvm_read_cr4_bits(vcpu, X86_CR4_DE))
  return 1;

 kvm_queue_exception(vcpu, UD_VECTOR);
 return 0;
}
