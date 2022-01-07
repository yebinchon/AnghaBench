
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_ppc_smmu_info {int data_keys; int instr_keys; int flags; int slb_size; struct kvm_ppc_one_seg_page_size* sps; } ;
struct kvm_ppc_one_seg_page_size {int dummy; } ;
struct kvm {int dummy; } ;


 int CPU_FTR_ARCH_207S ;
 int KVM_PPC_1T_SEGMENTS ;
 int KVM_PPC_NO_HASH ;
 int KVM_PPC_PAGE_SIZES_REAL ;
 int SLB_VSID_L ;
 int SLB_VSID_LP_01 ;
 scalar_t__ cpu_has_feature (int ) ;
 scalar_t__ kvmhv_on_pseries () ;
 int kvmppc_add_seg_page_size (struct kvm_ppc_one_seg_page_size**,int,int) ;

__attribute__((used)) static int kvm_vm_ioctl_get_smmu_info_hv(struct kvm *kvm,
      struct kvm_ppc_smmu_info *info)
{
 struct kvm_ppc_one_seg_page_size *sps;






 info->data_keys = 32;
 info->instr_keys = cpu_has_feature(CPU_FTR_ARCH_207S) ? 32 : 0;


 info->flags = KVM_PPC_PAGE_SIZES_REAL | KVM_PPC_1T_SEGMENTS;
 info->slb_size = 32;


 sps = &info->sps[0];
 kvmppc_add_seg_page_size(&sps, 12, 0);
 kvmppc_add_seg_page_size(&sps, 16, SLB_VSID_L | SLB_VSID_LP_01);
 kvmppc_add_seg_page_size(&sps, 24, SLB_VSID_L);


 if (kvmhv_on_pseries())
  info->flags |= KVM_PPC_NO_HASH;

 return 0;
}
