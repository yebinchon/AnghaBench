
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int mcg_cap; int mcg_ctl; int* mce_banks; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* setup_mce ) (struct kvm_vcpu*) ;} ;


 int EINVAL ;
 unsigned int KVM_MAX_MCE_BANKS ;
 int MCG_CTL_P ;
 int kvm_mce_cap_supported ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_vcpu_ioctl_x86_setup_mce(struct kvm_vcpu *vcpu,
     u64 mcg_cap)
{
 int r;
 unsigned bank_num = mcg_cap & 0xff, bank;

 r = -EINVAL;
 if (!bank_num || bank_num >= KVM_MAX_MCE_BANKS)
  goto out;
 if (mcg_cap & ~(kvm_mce_cap_supported | 0xff | 0xff0000))
  goto out;
 r = 0;
 vcpu->arch.mcg_cap = mcg_cap;

 if (mcg_cap & MCG_CTL_P)
  vcpu->arch.mcg_ctl = ~(u64)0;

 for (bank = 0; bank < bank_num; bank++)
  vcpu->arch.mce_banks[bank*4] = ~(u64)0;

 kvm_x86_ops->setup_mce(vcpu);
out:
 return r;
}
