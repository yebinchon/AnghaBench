
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvm_x86_mce {unsigned int bank; int status; int addr; int misc; int mcg_status; } ;
struct TYPE_2__ {int mcg_cap; int* mce_banks; int mcg_ctl; int mcg_status; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EINVAL ;
 int KVM_REQ_TRIPLE_FAULT ;
 int MCG_CTL_P ;
 int MCG_STATUS_MCIP ;
 int MCI_STATUS_OVER ;
 int MCI_STATUS_UC ;
 int MCI_STATUS_VAL ;
 int MC_VECTOR ;
 int X86_CR4_MCE ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_queue_exception (struct kvm_vcpu*,int ) ;
 int kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int kvm_vcpu_ioctl_x86_set_mce(struct kvm_vcpu *vcpu,
          struct kvm_x86_mce *mce)
{
 u64 mcg_cap = vcpu->arch.mcg_cap;
 unsigned bank_num = mcg_cap & 0xff;
 u64 *banks = vcpu->arch.mce_banks;

 if (mce->bank >= bank_num || !(mce->status & MCI_STATUS_VAL))
  return -EINVAL;




 if ((mce->status & MCI_STATUS_UC) && (mcg_cap & MCG_CTL_P) &&
     vcpu->arch.mcg_ctl != ~(u64)0)
  return 0;
 banks += 4 * mce->bank;




 if ((mce->status & MCI_STATUS_UC) && banks[0] != ~(u64)0)
  return 0;
 if (mce->status & MCI_STATUS_UC) {
  if ((vcpu->arch.mcg_status & MCG_STATUS_MCIP) ||
      !kvm_read_cr4_bits(vcpu, X86_CR4_MCE)) {
   kvm_make_request(KVM_REQ_TRIPLE_FAULT, vcpu);
   return 0;
  }
  if (banks[1] & MCI_STATUS_VAL)
   mce->status |= MCI_STATUS_OVER;
  banks[2] = mce->addr;
  banks[3] = mce->misc;
  vcpu->arch.mcg_status = mce->mcg_status;
  banks[1] = mce->status;
  kvm_queue_exception(vcpu, MC_VECTOR);
 } else if (!(banks[1] & MCI_STATUS_VAL)
     || !(banks[1] & MCI_STATUS_UC)) {
  if (banks[1] & MCI_STATUS_VAL)
   mce->status |= MCI_STATUS_OVER;
  banks[2] = mce->addr;
  banks[3] = mce->misc;
  banks[1] = mce->status;
 } else
  banks[1] |= MCI_STATUS_OVER;
 return 0;
}
