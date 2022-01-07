
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_resize_hpt {unsigned long order; int error; int work; struct kvm* kvm; } ;
struct kvm_ppc_resize_hpt {unsigned long flags; unsigned long shift; } ;
struct TYPE_2__ {int mmu_setup_lock; struct kvm_resize_hpt* resize_hpt; } ;
struct kvm {TYPE_1__ arch; } ;


 int EBUSY ;
 long EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ kvm_is_radix (struct kvm*) ;
 struct kvm_resize_hpt* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int resize_hpt_prepare_work ;
 int resize_hpt_release (struct kvm*,struct kvm_resize_hpt*) ;
 int schedule_work (int *) ;

long kvm_vm_ioctl_resize_hpt_prepare(struct kvm *kvm,
         struct kvm_ppc_resize_hpt *rhpt)
{
 unsigned long flags = rhpt->flags;
 unsigned long shift = rhpt->shift;
 struct kvm_resize_hpt *resize;
 int ret;

 if (flags != 0 || kvm_is_radix(kvm))
  return -EINVAL;

 if (shift && ((shift < 18) || (shift > 46)))
  return -EINVAL;

 mutex_lock(&kvm->arch.mmu_setup_lock);

 resize = kvm->arch.resize_hpt;

 if (resize) {
  if (resize->order == shift) {

   ret = resize->error;
   if (ret == -EBUSY)
    ret = 100;
   else if (ret)
    resize_hpt_release(kvm, resize);

   goto out;
  }


  resize_hpt_release(kvm, resize);
 }

 ret = 0;
 if (!shift)
  goto out;



 resize = kzalloc(sizeof(*resize), GFP_KERNEL);
 if (!resize) {
  ret = -ENOMEM;
  goto out;
 }

 resize->error = -EBUSY;
 resize->order = shift;
 resize->kvm = kvm;
 INIT_WORK(&resize->work, resize_hpt_prepare_work);
 kvm->arch.resize_hpt = resize;

 schedule_work(&resize->work);

 ret = 100;

out:
 mutex_unlock(&kvm->arch.mmu_setup_lock);
 return ret;
}
