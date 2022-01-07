
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union mci {scalar_t__ ck; scalar_t__ w; scalar_t__ dg; scalar_t__ sr; int val; } ;
struct mcck_volatile_info {int failing_storage_address; int ext_damage_code; int mcic; } ;
struct kvm_vcpu {int kvm; } ;
struct kvm_s390_mchk_info {int failing_storage_address; int ext_damage_code; int mcic; int cr14; } ;
struct TYPE_2__ {struct kvm_s390_mchk_info mchk; } ;
struct kvm_s390_irq {void* type; TYPE_1__ u; } ;
struct kvm_s390_interrupt_info {void* type; struct kvm_s390_mchk_info mchk; } ;
typedef int __u64 ;


 int CR14_DEGRADATION_SUBMASK ;
 int CR14_RECOVERY_SUBMASK ;
 int CR14_WARNING_SUBMASK ;
 void* KVM_S390_MCHK ;
 int WARN_ON_ONCE (int) ;
 int __inject_vm (int ,struct kvm_s390_interrupt_info*) ;
 int kvm_s390_inject_vcpu (struct kvm_vcpu*,struct kvm_s390_irq*) ;

void kvm_s390_reinject_machine_check(struct kvm_vcpu *vcpu,
         struct mcck_volatile_info *mcck_info)
{
 struct kvm_s390_interrupt_info inti;
 struct kvm_s390_irq irq;
 struct kvm_s390_mchk_info *mchk;
 union mci mci;
 __u64 cr14 = 0;
 int rc;

 mci.val = mcck_info->mcic;
 if (mci.sr)
  cr14 |= CR14_RECOVERY_SUBMASK;
 if (mci.dg)
  cr14 |= CR14_DEGRADATION_SUBMASK;
 if (mci.w)
  cr14 |= CR14_WARNING_SUBMASK;

 mchk = mci.ck ? &inti.mchk : &irq.u.mchk;
 mchk->cr14 = cr14;
 mchk->mcic = mcck_info->mcic;
 mchk->ext_damage_code = mcck_info->ext_damage_code;
 mchk->failing_storage_address = mcck_info->failing_storage_address;
 if (mci.ck) {

  inti.type = KVM_S390_MCHK;
  rc = __inject_vm(vcpu->kvm, &inti);
 } else {

  irq.type = KVM_S390_MCHK;
  rc = kvm_s390_inject_vcpu(vcpu, &irq);
 }
 WARN_ON_ONCE(rc);
}
