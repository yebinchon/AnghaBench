
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct kvm* kvm; } ;
struct vcpu_svm {int ir_list_lock; int ir_list; TYPE_1__ vcpu; } ;
struct kvm_vcpu {int dummy; } ;
struct kvm {int dummy; } ;
struct amd_svm_iommu_ir {int node; scalar_t__ data; } ;
struct amd_iommu_pi_data {scalar_t__ prev_ga_tag; scalar_t__ ir_data; } ;


 int AVIC_GATAG_TO_VCPUID (scalar_t__) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL_ACCOUNT ;
 struct kvm_vcpu* kvm_get_vcpu_by_id (struct kvm*,int ) ;
 struct amd_svm_iommu_ir* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int svm_ir_list_del (struct vcpu_svm*,struct amd_iommu_pi_data*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static int svm_ir_list_add(struct vcpu_svm *svm, struct amd_iommu_pi_data *pi)
{
 int ret = 0;
 unsigned long flags;
 struct amd_svm_iommu_ir *ir;






 if (pi->ir_data && (pi->prev_ga_tag != 0)) {
  struct kvm *kvm = svm->vcpu.kvm;
  u32 vcpu_id = AVIC_GATAG_TO_VCPUID(pi->prev_ga_tag);
  struct kvm_vcpu *prev_vcpu = kvm_get_vcpu_by_id(kvm, vcpu_id);
  struct vcpu_svm *prev_svm;

  if (!prev_vcpu) {
   ret = -EINVAL;
   goto out;
  }

  prev_svm = to_svm(prev_vcpu);
  svm_ir_list_del(prev_svm, pi);
 }





 ir = kzalloc(sizeof(struct amd_svm_iommu_ir), GFP_KERNEL_ACCOUNT);
 if (!ir) {
  ret = -ENOMEM;
  goto out;
 }
 ir->data = pi->ir_data;

 spin_lock_irqsave(&svm->ir_list_lock, flags);
 list_add(&ir->node, &svm->ir_list);
 spin_unlock_irqrestore(&svm->ir_list_lock, flags);
out:
 return ret;
}
