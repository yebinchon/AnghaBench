
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_ppc_smmu_info {int dummy; } ;
struct kvm {int dummy; } ;


 int BUG () ;

__attribute__((used)) static int kvm_vm_ioctl_get_smmu_info_pr(struct kvm *kvm,
      struct kvm_ppc_smmu_info *info)
{

 BUG();
}
