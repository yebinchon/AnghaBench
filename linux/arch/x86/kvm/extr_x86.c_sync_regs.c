
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {TYPE_3__* run; } ;
struct TYPE_4__ {int events; int sregs; int regs; } ;
struct TYPE_5__ {TYPE_1__ regs; } ;
struct TYPE_6__ {int kvm_dirty_regs; TYPE_2__ s; } ;


 int EINVAL ;
 int KVM_SYNC_X86_EVENTS ;
 int KVM_SYNC_X86_REGS ;
 int KVM_SYNC_X86_SREGS ;
 int KVM_SYNC_X86_VALID_FIELDS ;
 int __set_regs (struct kvm_vcpu*,int *) ;
 scalar_t__ __set_sregs (struct kvm_vcpu*,int *) ;
 scalar_t__ kvm_vcpu_ioctl_x86_set_vcpu_events (struct kvm_vcpu*,int *) ;

__attribute__((used)) static int sync_regs(struct kvm_vcpu *vcpu)
{
 if (vcpu->run->kvm_dirty_regs & ~KVM_SYNC_X86_VALID_FIELDS)
  return -EINVAL;

 if (vcpu->run->kvm_dirty_regs & KVM_SYNC_X86_REGS) {
  __set_regs(vcpu, &vcpu->run->s.regs.regs);
  vcpu->run->kvm_dirty_regs &= ~KVM_SYNC_X86_REGS;
 }
 if (vcpu->run->kvm_dirty_regs & KVM_SYNC_X86_SREGS) {
  if (__set_sregs(vcpu, &vcpu->run->s.regs.sregs))
   return -EINVAL;
  vcpu->run->kvm_dirty_regs &= ~KVM_SYNC_X86_SREGS;
 }
 if (vcpu->run->kvm_dirty_regs & KVM_SYNC_X86_EVENTS) {
  if (kvm_vcpu_ioctl_x86_set_vcpu_events(
    vcpu, &vcpu->run->s.regs.events))
   return -EINVAL;
  vcpu->run->kvm_dirty_regs &= ~KVM_SYNC_X86_EVENTS;
 }

 return 0;
}
