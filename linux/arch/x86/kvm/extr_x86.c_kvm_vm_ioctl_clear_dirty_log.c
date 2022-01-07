
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_clear_dirty_log {int dummy; } ;
struct kvm {int slots_lock; } ;
struct TYPE_2__ {int (* flush_log_dirty ) (struct kvm*) ;} ;


 int kvm_clear_dirty_log_protect (struct kvm*,struct kvm_clear_dirty_log*,int*) ;
 int kvm_flush_remote_tlbs (struct kvm*) ;
 TYPE_1__* kvm_x86_ops ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct kvm*) ;

int kvm_vm_ioctl_clear_dirty_log(struct kvm *kvm, struct kvm_clear_dirty_log *log)
{
 bool flush = 0;
 int r;

 mutex_lock(&kvm->slots_lock);




 if (kvm_x86_ops->flush_log_dirty)
  kvm_x86_ops->flush_log_dirty(kvm);

 r = kvm_clear_dirty_log_protect(kvm, log, &flush);





 lockdep_assert_held(&kvm->slots_lock);
 if (flush)
  kvm_flush_remote_tlbs(kvm);

 mutex_unlock(&kvm->slots_lock);
 return r;
}
