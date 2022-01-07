
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct kvmppc_pte {int eaddr; int raddr; int may_execute; int may_read; int may_write; int vpage; int page_size; } ;
struct TYPE_2__ {int magic_page_ea; int magic_page_pa; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gva_t ;


 int ENOENT ;
 int KVM_PAM ;
 int MMU_PAGE_4K ;
 int MSR_PR ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_mmu_book3s_32_ea_to_vp (struct kvm_vcpu*,int,int) ;
 int kvmppc_mmu_book3s_32_xlate_bat (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int) ;
 int kvmppc_mmu_book3s_32_xlate_pte (struct kvm_vcpu*,int,struct kvmppc_pte*,int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int kvmppc_mmu_book3s_32_xlate(struct kvm_vcpu *vcpu, gva_t eaddr,
          struct kvmppc_pte *pte, bool data,
          bool iswrite)
{
 int r;
 ulong mp_ea = vcpu->arch.magic_page_ea;

 pte->eaddr = eaddr;
 pte->page_size = MMU_PAGE_4K;


 if (unlikely(mp_ea) &&
     unlikely((eaddr & ~0xfffULL) == (mp_ea & ~0xfffULL)) &&
     !(kvmppc_get_msr(vcpu) & MSR_PR)) {
  pte->vpage = kvmppc_mmu_book3s_32_ea_to_vp(vcpu, eaddr, data);
  pte->raddr = vcpu->arch.magic_page_pa | (pte->raddr & 0xfff);
  pte->raddr &= KVM_PAM;
  pte->may_execute = 1;
  pte->may_read = 1;
  pte->may_write = 1;

  return 0;
 }

 r = kvmppc_mmu_book3s_32_xlate_bat(vcpu, eaddr, pte, data, iswrite);
 if (r < 0)
  r = kvmppc_mmu_book3s_32_xlate_pte(vcpu, eaddr, pte,
         data, iswrite, 1);
 if (r == -ENOENT)
  r = kvmppc_mmu_book3s_32_xlate_pte(vcpu, eaddr, pte,
         data, iswrite, 0);

 return r;
}
