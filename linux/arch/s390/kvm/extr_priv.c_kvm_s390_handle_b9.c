
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int ipa; } ;


 int EOPNOTSUPP ;
 int handle_epsw (struct kvm_vcpu*) ;
 int handle_essa (struct kvm_vcpu*) ;
 int handle_ipte_interlock (struct kvm_vcpu*) ;
 int handle_pfmf (struct kvm_vcpu*) ;

int kvm_s390_handle_b9(struct kvm_vcpu *vcpu)
{
 switch (vcpu->arch.sie_block->ipa & 0x00ff) {
 case 0x8a:
 case 0x8e:
 case 0x8f:
  return handle_ipte_interlock(vcpu);
 case 0x8d:
  return handle_epsw(vcpu);
 case 0xab:
  return handle_essa(vcpu);
 case 0xaf:
  return handle_pfmf(vcpu);
 default:
  return -EOPNOTSUPP;
 }
}
