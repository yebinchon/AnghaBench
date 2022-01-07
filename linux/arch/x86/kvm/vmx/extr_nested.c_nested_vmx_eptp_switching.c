
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vmcs12 {int eptp_list_address; int ept_pointer; } ;
struct TYPE_6__ {struct kvm_mmu* walk_mmu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct TYPE_4__ {int ad_disabled; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct kvm_mmu {int ept_ad; TYPE_2__ mmu_role; } ;


 int PAGE_SHIFT ;
 int VMFUNC_EPTP_ENTRIES ;
 int VMX_EPTP_AD_ENABLE_BIT ;
 int kvm_mmu_reload (struct kvm_vcpu*) ;
 int kvm_mmu_unload (struct kvm_vcpu*) ;
 int kvm_rcx_read (struct kvm_vcpu*) ;
 scalar_t__ kvm_vcpu_read_guest_page (struct kvm_vcpu*,int,int*,int,int) ;
 int nested_cpu_has_ept (struct vmcs12*) ;
 int nested_cpu_has_eptp_switching (struct vmcs12*) ;
 int valid_ept_address (struct kvm_vcpu*,int) ;

__attribute__((used)) static int nested_vmx_eptp_switching(struct kvm_vcpu *vcpu,
         struct vmcs12 *vmcs12)
{
 u32 index = kvm_rcx_read(vcpu);
 u64 address;
 bool accessed_dirty;
 struct kvm_mmu *mmu = vcpu->arch.walk_mmu;

 if (!nested_cpu_has_eptp_switching(vmcs12) ||
     !nested_cpu_has_ept(vmcs12))
  return 1;

 if (index >= VMFUNC_EPTP_ENTRIES)
  return 1;


 if (kvm_vcpu_read_guest_page(vcpu, vmcs12->eptp_list_address >> PAGE_SHIFT,
         &address, index * 8, 8))
  return 1;

 accessed_dirty = !!(address & VMX_EPTP_AD_ENABLE_BIT);





 if (vmcs12->ept_pointer != address) {
  if (!valid_ept_address(vcpu, address))
   return 1;

  kvm_mmu_unload(vcpu);
  mmu->ept_ad = accessed_dirty;
  mmu->mmu_role.base.ad_disabled = !accessed_dirty;
  vmcs12->ept_pointer = address;





  kvm_mmu_reload(vcpu);
 }

 return 0;
}
