
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
 int handle_ptff (struct kvm_vcpu*) ;
 int handle_sckpf (struct kvm_vcpu*) ;

int kvm_s390_handle_01(struct kvm_vcpu *vcpu)
{
 switch (vcpu->arch.sie_block->ipa & 0x00ff) {
 case 0x04:
  return handle_ptff(vcpu);
 case 0x07:
  return handle_sckpf(vcpu);
 default:
  return -EOPNOTSUPP;
 }
}
