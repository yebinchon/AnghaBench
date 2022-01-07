
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_resize_hpt {unsigned long order; long error; } ;
struct kvm_ppc_resize_hpt {unsigned long flags; unsigned long shift; } ;
struct TYPE_2__ {int mmu_ready; int mmu_setup_lock; struct kvm_resize_hpt* resize_hpt; } ;
struct kvm {TYPE_1__ arch; } ;


 long EINVAL ;
 long EIO ;
 long ENXIO ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ kvm_is_radix (struct kvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int on_each_cpu (int ,int *,int) ;
 int resize_hpt_boot_vcpu ;
 int resize_hpt_pivot (struct kvm_resize_hpt*) ;
 long resize_hpt_rehash (struct kvm_resize_hpt*) ;
 int resize_hpt_release (struct kvm*,struct kvm_resize_hpt*) ;
 int smp_mb () ;

long kvm_vm_ioctl_resize_hpt_commit(struct kvm *kvm,
        struct kvm_ppc_resize_hpt *rhpt)
{
 unsigned long flags = rhpt->flags;
 unsigned long shift = rhpt->shift;
 struct kvm_resize_hpt *resize;
 long ret;

 if (flags != 0 || kvm_is_radix(kvm))
  return -EINVAL;

 if (shift && ((shift < 18) || (shift > 46)))
  return -EINVAL;

 mutex_lock(&kvm->arch.mmu_setup_lock);

 resize = kvm->arch.resize_hpt;


 ret = -EIO;
 if (WARN_ON(!kvm->arch.mmu_ready))
  goto out_no_hpt;


 kvm->arch.mmu_ready = 0;
 smp_mb();



 on_each_cpu(resize_hpt_boot_vcpu, ((void*)0), 1);

 ret = -ENXIO;
 if (!resize || (resize->order != shift))
  goto out;

 ret = resize->error;
 if (ret)
  goto out;

 ret = resize_hpt_rehash(resize);
 if (ret)
  goto out;

 resize_hpt_pivot(resize);

out:

 kvm->arch.mmu_ready = 1;
 smp_mb();
out_no_hpt:
 resize_hpt_release(kvm, resize);
 mutex_unlock(&kvm->arch.mmu_setup_lock);
 return ret;
}
