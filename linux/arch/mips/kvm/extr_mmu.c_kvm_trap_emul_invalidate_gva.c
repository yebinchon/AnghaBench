
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * pgd; } ;
struct TYPE_4__ {int * pgd; } ;
struct TYPE_6__ {TYPE_2__ guest_user_mm; TYPE_1__ guest_kernel_mm; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
typedef int pte_t ;
typedef int pgd_t ;


 int PAGE_MASK ;
 int __pgprot (int ) ;
 int * kvm_mips_walk_pgd (int *,int *,unsigned long) ;
 int pfn_pte (int ,int ) ;

void kvm_trap_emul_invalidate_gva(struct kvm_vcpu *vcpu, unsigned long addr,
      bool user)
{
 pgd_t *pgdp;
 pte_t *ptep;

 addr &= PAGE_MASK << 1;

 pgdp = vcpu->arch.guest_kernel_mm.pgd;
 ptep = kvm_mips_walk_pgd(pgdp, ((void*)0), addr);
 if (ptep) {
  ptep[0] = pfn_pte(0, __pgprot(0));
  ptep[1] = pfn_pte(0, __pgprot(0));
 }

 if (user) {
  pgdp = vcpu->arch.guest_user_mm.pgd;
  ptep = kvm_mips_walk_pgd(pgdp, ((void*)0), addr);
  if (ptep) {
   ptep[0] = pfn_pte(0, __pgprot(0));
   ptep[1] = pfn_pte(0, __pgprot(0));
  }
 }
}
