
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int spapr_tce_tables; } ;
struct kvm {TYPE_1__ arch; } ;


 int BUG_ON (int) ;
 int FW_FEATURE_SET_MODE ;
 int WARN_ON (int) ;
 scalar_t__ firmware_has_feature (int ) ;
 scalar_t__ kvm_global_user_count ;
 int kvm_global_user_count_lock ;
 int list_empty (int *) ;
 int pseries_enable_reloc_on_exc () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void kvmppc_core_destroy_vm_pr(struct kvm *kvm)
{




 if (firmware_has_feature(FW_FEATURE_SET_MODE)) {
  spin_lock(&kvm_global_user_count_lock);
  BUG_ON(kvm_global_user_count == 0);
  if (--kvm_global_user_count == 0)
   pseries_enable_reloc_on_exc();
  spin_unlock(&kvm_global_user_count_lock);
 }
}
