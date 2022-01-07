
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {TYPE_1__* walk_mmu; int regs_avail; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int pdpte ;
typedef int gfn_t ;
struct TYPE_3__ {int pdptrs; } ;


 int ARRAY_SIZE (int ) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PFERR_USER_MASK ;
 int PFERR_WRITE_MASK ;
 int VCPU_EXREG_PDPTR ;
 int is_pae_paging (struct kvm_vcpu*) ;
 int kvm_read_cr3 (struct kvm_vcpu*) ;
 int kvm_read_nested_guest_page (struct kvm_vcpu*,int,int *,int,int,int) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int test_bit (int ,unsigned long*) ;

bool pdptrs_changed(struct kvm_vcpu *vcpu)
{
 u64 pdpte[ARRAY_SIZE(vcpu->arch.walk_mmu->pdptrs)];
 bool changed = 1;
 int offset;
 gfn_t gfn;
 int r;

 if (!is_pae_paging(vcpu))
  return 0;

 if (!test_bit(VCPU_EXREG_PDPTR,
        (unsigned long *)&vcpu->arch.regs_avail))
  return 1;

 gfn = (kvm_read_cr3(vcpu) & 0xffffffe0ul) >> PAGE_SHIFT;
 offset = (kvm_read_cr3(vcpu) & 0xffffffe0ul) & (PAGE_SIZE - 1);
 r = kvm_read_nested_guest_page(vcpu, gfn, pdpte, offset, sizeof(pdpte),
           PFERR_USER_MASK | PFERR_WRITE_MASK);
 if (r < 0)
  goto out;
 changed = memcmp(pdpte, vcpu->arch.walk_mmu->pdptrs, sizeof(pdpte)) != 0;
out:

 return changed;
}
