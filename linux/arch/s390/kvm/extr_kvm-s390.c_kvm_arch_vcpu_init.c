
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pfault_token; } ;
struct kvm_vcpu {int kvm; TYPE_2__* run; TYPE_1__ arch; } ;
struct TYPE_4__ {int kvm_valid_regs; } ;


 int KVM_S390_PFAULT_TOKEN_INVALID ;
 int KVM_SYNC_ACRS ;
 int KVM_SYNC_ARCH0 ;
 int KVM_SYNC_BPBC ;
 int KVM_SYNC_CRS ;
 int KVM_SYNC_ETOKEN ;
 int KVM_SYNC_FPRS ;
 int KVM_SYNC_GPRS ;
 int KVM_SYNC_GSCB ;
 int KVM_SYNC_PFAULT ;
 int KVM_SYNC_PREFIX ;
 int KVM_SYNC_RICCB ;
 int KVM_SYNC_VRS ;
 scalar_t__ MACHINE_HAS_VX ;
 int __kvm_ucontrol_vcpu_init (struct kvm_vcpu*) ;
 int kvm_clear_async_pf_completion_queue (struct kvm_vcpu*) ;
 scalar_t__ kvm_is_ucontrol (int ) ;
 int kvm_s390_set_prefix (struct kvm_vcpu*,int ) ;
 scalar_t__ test_kvm_facility (int ,int) ;

int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
{
 vcpu->arch.pfault_token = KVM_S390_PFAULT_TOKEN_INVALID;
 kvm_clear_async_pf_completion_queue(vcpu);
 vcpu->run->kvm_valid_regs = KVM_SYNC_PREFIX |
        KVM_SYNC_GPRS |
        KVM_SYNC_ACRS |
        KVM_SYNC_CRS |
        KVM_SYNC_ARCH0 |
        KVM_SYNC_PFAULT;
 kvm_s390_set_prefix(vcpu, 0);
 if (test_kvm_facility(vcpu->kvm, 64))
  vcpu->run->kvm_valid_regs |= KVM_SYNC_RICCB;
 if (test_kvm_facility(vcpu->kvm, 82))
  vcpu->run->kvm_valid_regs |= KVM_SYNC_BPBC;
 if (test_kvm_facility(vcpu->kvm, 133))
  vcpu->run->kvm_valid_regs |= KVM_SYNC_GSCB;
 if (test_kvm_facility(vcpu->kvm, 156))
  vcpu->run->kvm_valid_regs |= KVM_SYNC_ETOKEN;



 if (MACHINE_HAS_VX)
  vcpu->run->kvm_valid_regs |= KVM_SYNC_VRS;
 else
  vcpu->run->kvm_valid_regs |= KVM_SYNC_FPRS;

 if (kvm_is_ucontrol(vcpu->kvm))
  return __kvm_ucontrol_vcpu_init(vcpu);

 return 0;
}
