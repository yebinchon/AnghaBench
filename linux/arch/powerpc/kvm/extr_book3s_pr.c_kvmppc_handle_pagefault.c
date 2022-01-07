
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
typedef int u64 ;
struct kvmppc_pte {int may_execute; int may_read; int may_write; int raddr; int eaddr; int vpage; int wimg; int page_size; int member_0; } ;
struct TYPE_4__ {int (* xlate ) (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int) ;scalar_t__ (* is_dcbz32 ) (struct kvm_vcpu*) ;int (* esid_to_vsid ) (struct kvm_vcpu*,int,int*) ;} ;
struct TYPE_6__ {int fault_dsisr; int hflags; int paddr_accessed; int vaddr_accessed; TYPE_1__ mmu; } ;
struct TYPE_5__ {int mmio_exits; int sp_storage; } ;
struct kvm_vcpu {TYPE_3__ arch; TYPE_2__ stat; } ;
struct kvm_run {int exit_reason; } ;


 int BOOK3S_HFLAG_DCBZ32 ;
 int BOOK3S_HFLAG_SPLIT_HACK ;
 int BOOK3S_INTERRUPT_DATA_STORAGE ;
 int DSISR_ISSTORE ;
 int DSISR_NOHPTE ;
 int DSISR_PROTFAULT ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int EPERM ;
 int HPTE_R_M ;
 int KVM_EXIT_INTERNAL_ERROR ;
 int KVM_PAM ;
 int MMU_PAGE_64K ;


 int RESUME_GUEST ;
 int RESUME_HOST ;
 int RESUME_HOST_NV ;
 int SID_SHIFT ;
 int SPLIT_HACK_MASK ;
 int SPLIT_HACK_OFFS ;
 int VSID_REAL ;
 int VSID_REAL_DR ;
 int VSID_REAL_IR ;
 int kvmppc_book3s_queue_irqprio (struct kvm_vcpu*,int) ;
 int kvmppc_core_queue_data_storage (struct kvm_vcpu*,int,int) ;
 int kvmppc_core_queue_inst_storage (struct kvm_vcpu*,int) ;
 int kvmppc_emulate_mmio (struct kvm_run*,struct kvm_vcpu*) ;
 int kvmppc_get_fault_dar (struct kvm_vcpu*) ;
 int const kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_mmu_map_page (struct kvm_vcpu*,struct kvmppc_pte*,int) ;
 int kvmppc_mmu_unmap_page (struct kvm_vcpu*,struct kvmppc_pte*) ;
 int kvmppc_patch_dcbz (struct kvm_vcpu*,struct kvmppc_pte*) ;
 int kvmppc_set_dar (struct kvm_vcpu*,int ) ;
 scalar_t__ kvmppc_visible_gpa (struct kvm_vcpu*,int) ;
 int stub1 (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int) ;
 int stub2 (struct kvm_vcpu*,int,int*) ;
 scalar_t__ stub3 (struct kvm_vcpu*) ;
 scalar_t__ stub4 (struct kvm_vcpu*) ;

int kvmppc_handle_pagefault(struct kvm_run *run, struct kvm_vcpu *vcpu,
       ulong eaddr, int vec)
{
 bool data = (vec == BOOK3S_INTERRUPT_DATA_STORAGE);
 bool iswrite = 0;
 int r = RESUME_GUEST;
 int relocated;
 int page_found = 0;
 struct kvmppc_pte pte = { 0 };
 bool dr = (kvmppc_get_msr(vcpu) & 129) ? 1 : 0;
 bool ir = (kvmppc_get_msr(vcpu) & 128) ? 1 : 0;
 u64 vsid;

 relocated = data ? dr : ir;
 if (data && (vcpu->arch.fault_dsisr & DSISR_ISSTORE))
  iswrite = 1;


 if (relocated) {
  page_found = vcpu->arch.mmu.xlate(vcpu, eaddr, &pte, data, iswrite);
 } else {
  pte.may_execute = 1;
  pte.may_read = 1;
  pte.may_write = 1;
  pte.raddr = eaddr & KVM_PAM;
  pte.eaddr = eaddr;
  pte.vpage = eaddr >> 12;
  pte.page_size = MMU_PAGE_64K;
  pte.wimg = HPTE_R_M;
 }

 switch (kvmppc_get_msr(vcpu) & (129|128)) {
 case 0:
  pte.vpage |= ((u64)VSID_REAL << (SID_SHIFT - 12));
  break;
 case 129:
  if (!data &&
      (vcpu->arch.hflags & BOOK3S_HFLAG_SPLIT_HACK) &&
      ((pte.raddr & SPLIT_HACK_MASK) == SPLIT_HACK_OFFS))
   pte.raddr &= ~SPLIT_HACK_MASK;

 case 128:
  vcpu->arch.mmu.esid_to_vsid(vcpu, eaddr >> SID_SHIFT, &vsid);

  if ((kvmppc_get_msr(vcpu) & (129|128)) == 129)
   pte.vpage |= ((u64)VSID_REAL_DR << (SID_SHIFT - 12));
  else
   pte.vpage |= ((u64)VSID_REAL_IR << (SID_SHIFT - 12));
  pte.vpage |= vsid;

  if (vsid == -1)
   page_found = -EINVAL;
  break;
 }

 if (vcpu->arch.mmu.is_dcbz32(vcpu) &&
    (!(vcpu->arch.hflags & BOOK3S_HFLAG_DCBZ32))) {





  pte.may_execute = !data;
 }

 if (page_found == -ENOENT || page_found == -EPERM) {

  u64 flags;

  if (page_found == -EPERM)
   flags = DSISR_PROTFAULT;
  else
   flags = DSISR_NOHPTE;
  if (data) {
   flags |= vcpu->arch.fault_dsisr & DSISR_ISSTORE;
   kvmppc_core_queue_data_storage(vcpu, eaddr, flags);
  } else {
   kvmppc_core_queue_inst_storage(vcpu, flags);
  }
 } else if (page_found == -EINVAL) {

  kvmppc_set_dar(vcpu, kvmppc_get_fault_dar(vcpu));
  kvmppc_book3s_queue_irqprio(vcpu, vec + 0x80);
 } else if (kvmppc_visible_gpa(vcpu, pte.raddr)) {
  if (data && !(vcpu->arch.fault_dsisr & DSISR_NOHPTE)) {





   kvmppc_mmu_unmap_page(vcpu, &pte);
  }

  if (kvmppc_mmu_map_page(vcpu, &pte, iswrite) == -EIO) {

   run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
   return RESUME_HOST;
  }
  if (data)
   vcpu->stat.sp_storage++;
  else if (vcpu->arch.mmu.is_dcbz32(vcpu) &&
    (!(vcpu->arch.hflags & BOOK3S_HFLAG_DCBZ32)))
   kvmppc_patch_dcbz(vcpu, &pte);
 } else {

  vcpu->stat.mmio_exits++;
  vcpu->arch.paddr_accessed = pte.raddr;
  vcpu->arch.vaddr_accessed = pte.eaddr;
  r = kvmppc_emulate_mmio(run, vcpu);
  if ( r == RESUME_HOST_NV )
   r = RESUME_HOST;
 }

 return r;
}
