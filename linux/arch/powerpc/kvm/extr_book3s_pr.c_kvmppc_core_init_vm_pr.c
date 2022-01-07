
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hpt_mutex; } ;
struct kvm {TYPE_1__ arch; } ;


 int FW_FEATURE_SET_MODE ;
 scalar_t__ firmware_has_feature (int ) ;
 int kvm_global_user_count ;
 int kvm_global_user_count_lock ;
 int kvmppc_pr_init_default_hcalls (struct kvm*) ;
 int mutex_init (int *) ;
 int pseries_disable_reloc_on_exc () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int kvmppc_core_init_vm_pr(struct kvm *kvm)
{
 mutex_init(&kvm->arch.hpt_mutex);






 if (firmware_has_feature(FW_FEATURE_SET_MODE)) {
  spin_lock(&kvm_global_user_count_lock);
  if (++kvm_global_user_count == 1)
   pseries_disable_reloc_on_exc();
  spin_unlock(&kvm_global_user_count_lock);
 }
 return 0;
}
