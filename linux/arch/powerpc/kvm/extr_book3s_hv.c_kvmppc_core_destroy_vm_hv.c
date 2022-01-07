
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lpid; scalar_t__ process_table; int hpt; int threads_indep; int debugfs_dir; } ;
struct kvm {TYPE_1__ arch; } ;


 int CPU_FTR_ARCH_300 ;
 scalar_t__ cpu_has_feature (int ) ;
 int debugfs_remove_recursive (int ) ;
 int kvm_hv_vm_deactivated () ;
 scalar_t__ kvm_is_radix (struct kvm*) ;
 int kvmhv_release_all_nested (struct kvm*) ;
 int kvmhv_set_ptbl_entry (int ,int ,int ) ;
 int kvmppc_free_hpt (int *) ;
 int kvmppc_free_lpid (int ) ;
 int kvmppc_free_pimap (struct kvm*) ;
 int kvmppc_free_radix (struct kvm*) ;
 int kvmppc_free_vcores (struct kvm*) ;
 scalar_t__ nesting_enabled (struct kvm*) ;

__attribute__((used)) static void kvmppc_core_destroy_vm_hv(struct kvm *kvm)
{
 debugfs_remove_recursive(kvm->arch.debugfs_dir);

 if (!kvm->arch.threads_indep)
  kvm_hv_vm_deactivated();

 kvmppc_free_vcores(kvm);


 if (kvm_is_radix(kvm))
  kvmppc_free_radix(kvm);
 else
  kvmppc_free_hpt(&kvm->arch.hpt);


 if (cpu_has_feature(CPU_FTR_ARCH_300)) {
  if (nesting_enabled(kvm))
   kvmhv_release_all_nested(kvm);
  kvm->arch.process_table = 0;
  kvmhv_set_ptbl_entry(kvm->arch.lpid, 0, 0);
 }
 kvmppc_free_lpid(kvm->arch.lpid);

 kvmppc_free_pimap(kvm);
}
