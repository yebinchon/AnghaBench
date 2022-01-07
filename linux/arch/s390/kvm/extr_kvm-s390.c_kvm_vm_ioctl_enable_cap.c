
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kvm_enable_cap {int cap; scalar_t__ flags; } ;
struct TYPE_5__ {int fac_list; int fac_mask; } ;
struct TYPE_8__ {int use_irqchip; int user_sigp; int user_stsi; int user_instr0; int use_pfmfi; int use_skf; int use_cmma; TYPE_1__ model; } ;
struct kvm {TYPE_4__ arch; int lock; TYPE_3__* mm; int created_vcpus; } ;
struct TYPE_6__ {int allow_gmap_hpage_1m; } ;
struct TYPE_7__ {int mmap_sem; TYPE_2__ context; } ;


 int EBUSY ;
 int EINVAL ;
 int MACHINE_HAS_VX ;
 int VM_EVENT (struct kvm*,int,char*,char*) ;
 int down_write (int *) ;
 int hpage ;
 int icpt_operexc_on_all_vcpus (struct kvm*) ;
 int kvm_is_ucontrol (struct kvm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_kvm_facility (int ,int) ;
 int test_facility (int) ;
 int up_write (int *) ;

int kvm_vm_ioctl_enable_cap(struct kvm *kvm, struct kvm_enable_cap *cap)
{
 int r;

 if (cap->flags)
  return -EINVAL;

 switch (cap->cap) {
 case 133:
  VM_EVENT(kvm, 3, "%s", "ENABLE: CAP_S390_IRQCHIP");
  kvm->arch.use_irqchip = 1;
  r = 0;
  break;
 case 130:
  VM_EVENT(kvm, 3, "%s", "ENABLE: CAP_S390_USER_SIGP");
  kvm->arch.user_sigp = 1;
  r = 0;
  break;
 case 128:
  mutex_lock(&kvm->lock);
  if (kvm->created_vcpus) {
   r = -EBUSY;
  } else if (MACHINE_HAS_VX) {
   set_kvm_facility(kvm->arch.model.fac_mask, 129);
   set_kvm_facility(kvm->arch.model.fac_list, 129);
   if (test_facility(134)) {
    set_kvm_facility(kvm->arch.model.fac_mask, 134);
    set_kvm_facility(kvm->arch.model.fac_list, 134);
   }
   if (test_facility(135)) {
    set_kvm_facility(kvm->arch.model.fac_mask, 135);
    set_kvm_facility(kvm->arch.model.fac_list, 135);
   }
   if (test_facility(148)) {
    set_kvm_facility(kvm->arch.model.fac_mask, 148);
    set_kvm_facility(kvm->arch.model.fac_list, 148);
   }
   if (test_facility(152)) {
    set_kvm_facility(kvm->arch.model.fac_mask, 152);
    set_kvm_facility(kvm->arch.model.fac_list, 152);
   }
   r = 0;
  } else
   r = -EINVAL;
  mutex_unlock(&kvm->lock);
  VM_EVENT(kvm, 3, "ENABLE: CAP_S390_VECTOR_REGISTERS %s",
    r ? "(not available)" : "(success)");
  break;
 case 132:
  r = -EINVAL;
  mutex_lock(&kvm->lock);
  if (kvm->created_vcpus) {
   r = -EBUSY;
  } else if (test_facility(64)) {
   set_kvm_facility(kvm->arch.model.fac_mask, 64);
   set_kvm_facility(kvm->arch.model.fac_list, 64);
   r = 0;
  }
  mutex_unlock(&kvm->lock);
  VM_EVENT(kvm, 3, "ENABLE: CAP_S390_RI %s",
    r ? "(not available)" : "(success)");
  break;
 case 136:
  mutex_lock(&kvm->lock);
  if (kvm->created_vcpus) {
   r = -EBUSY;
  } else {
   set_kvm_facility(kvm->arch.model.fac_mask, 72);
   set_kvm_facility(kvm->arch.model.fac_list, 72);
   r = 0;
  }
  mutex_unlock(&kvm->lock);
  VM_EVENT(kvm, 3, "ENABLE: AIS %s",
    r ? "(not available)" : "(success)");
  break;
 case 135:
  r = -EINVAL;
  mutex_lock(&kvm->lock);
  if (kvm->created_vcpus) {
   r = -EBUSY;
  } else if (test_facility(133)) {
   set_kvm_facility(kvm->arch.model.fac_mask, 133);
   set_kvm_facility(kvm->arch.model.fac_list, 133);
   r = 0;
  }
  mutex_unlock(&kvm->lock);
  VM_EVENT(kvm, 3, "ENABLE: CAP_S390_GS %s",
    r ? "(not available)" : "(success)");
  break;
 case 134:
  mutex_lock(&kvm->lock);
  if (kvm->created_vcpus)
   r = -EBUSY;
  else if (!hpage || kvm->arch.use_cmma || kvm_is_ucontrol(kvm))
   r = -EINVAL;
  else {
   r = 0;
   down_write(&kvm->mm->mmap_sem);
   kvm->mm->context.allow_gmap_hpage_1m = 1;
   up_write(&kvm->mm->mmap_sem);





   kvm->arch.use_skf = 0;
   kvm->arch.use_pfmfi = 0;
  }
  mutex_unlock(&kvm->lock);
  VM_EVENT(kvm, 3, "ENABLE: CAP_S390_HPAGE %s",
    r ? "(not available)" : "(success)");
  break;
 case 129:
  VM_EVENT(kvm, 3, "%s", "ENABLE: CAP_S390_USER_STSI");
  kvm->arch.user_stsi = 1;
  r = 0;
  break;
 case 131:
  VM_EVENT(kvm, 3, "%s", "ENABLE: CAP_S390_USER_INSTR0");
  kvm->arch.user_instr0 = 1;
  icpt_operexc_on_all_vcpus(kvm);
  r = 0;
  break;
 default:
  r = -EINVAL;
  break;
 }
 return r;
}
