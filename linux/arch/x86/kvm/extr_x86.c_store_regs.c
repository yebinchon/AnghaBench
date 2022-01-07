
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* run; } ;
struct kvm_sync_regs {int dummy; } ;
struct TYPE_6__ {int events; int sregs; int regs; } ;
struct TYPE_4__ {TYPE_3__ regs; } ;
struct TYPE_5__ {int kvm_valid_regs; TYPE_1__ s; } ;


 int BUILD_BUG_ON (int) ;
 int KVM_SYNC_X86_EVENTS ;
 int KVM_SYNC_X86_REGS ;
 int KVM_SYNC_X86_SREGS ;
 int SYNC_REGS_SIZE_BYTES ;
 int __get_regs (struct kvm_vcpu*,int *) ;
 int __get_sregs (struct kvm_vcpu*,int *) ;
 int kvm_vcpu_ioctl_x86_get_vcpu_events (struct kvm_vcpu*,int *) ;

__attribute__((used)) static void store_regs(struct kvm_vcpu *vcpu)
{
 BUILD_BUG_ON(sizeof(struct kvm_sync_regs) > SYNC_REGS_SIZE_BYTES);

 if (vcpu->run->kvm_valid_regs & KVM_SYNC_X86_REGS)
  __get_regs(vcpu, &vcpu->run->s.regs.regs);

 if (vcpu->run->kvm_valid_regs & KVM_SYNC_X86_SREGS)
  __get_sregs(vcpu, &vcpu->run->s.regs.sregs);

 if (vcpu->run->kvm_valid_regs & KVM_SYNC_X86_EVENTS)
  kvm_vcpu_ioctl_x86_get_vcpu_events(
    vcpu, &vcpu->run->s.regs.events);
}
