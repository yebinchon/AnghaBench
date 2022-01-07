
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvmppc_pte {int page_size; unsigned long page_shift; unsigned long eaddr; int raddr; int may_read; int may_write; int may_execute; int rc; } ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm {int dummy; } ;
typedef int rpte ;
typedef unsigned long gva_t ;
typedef int __be64 ;
struct TYPE_2__ {unsigned long shift; } ;


 int EINVAL ;
 int ENOENT ;
 int MMU_PAGE_4K ;
 int MMU_PAGE_COUNT ;
 int RPDB_MASK ;
 int RPDS_MASK ;
 int RTS1_MASK ;
 int RTS1_SHIFT ;
 int RTS2_MASK ;
 int RTS2_SHIFT ;
 int _PAGE_ACCESSED ;
 int _PAGE_DIRTY ;
 int _PAGE_EXEC ;
 int _PAGE_PRESENT ;
 int _PAGE_PTE ;
 int _PAGE_READ ;
 int _PAGE_WRITE ;
 int __be64_to_cpu (int ) ;
 int kvm_read_guest (struct kvm*,int,int *,int) ;
 TYPE_1__* mmu_psize_defs ;
 unsigned long* p9_supported_radix_bits ;

int kvmppc_mmu_walk_radix_tree(struct kvm_vcpu *vcpu, gva_t eaddr,
          struct kvmppc_pte *gpte, u64 root,
          u64 *pte_ret_p)
{
 struct kvm *kvm = vcpu->kvm;
 int ret, level, ps;
 unsigned long rts, bits, offset, index;
 u64 pte, base, gpa;
 __be64 rpte;

 rts = ((root & RTS1_MASK) >> (RTS1_SHIFT - 3)) |
  ((root & RTS2_MASK) >> RTS2_SHIFT);
 bits = root & RPDS_MASK;
 base = root & RPDB_MASK;

 offset = rts + 31;


 if (offset != 52)
  return -EINVAL;


 for (level = 3; level >= 0; --level) {
  u64 addr;

  if (level && bits != p9_supported_radix_bits[level])
   return -EINVAL;
  if (level == 0 && !(bits == 5 || bits == 9))
   return -EINVAL;
  offset -= bits;
  index = (eaddr >> offset) & ((1UL << bits) - 1);

  if (base & ((1UL << (bits + 3)) - 1))
   return -EINVAL;

  addr = base + (index * sizeof(rpte));
  ret = kvm_read_guest(kvm, addr, &rpte, sizeof(rpte));
  if (ret) {
   if (pte_ret_p)
    *pte_ret_p = addr;
   return ret;
  }
  pte = __be64_to_cpu(rpte);
  if (!(pte & _PAGE_PRESENT))
   return -ENOENT;

  if (pte & _PAGE_PTE)
   break;

  base = pte & RPDB_MASK;
  bits = pte & RPDS_MASK;
 }


 if (level < 0 || level == 3)
  return -EINVAL;



 gpa = pte & 0x01fffffffffff000ul;
 if (gpa & ((1ul << offset) - 1))
  return -EINVAL;
 gpa |= eaddr & ((1ul << offset) - 1);
 for (ps = MMU_PAGE_4K; ps < MMU_PAGE_COUNT; ++ps)
  if (offset == mmu_psize_defs[ps].shift)
   break;
 gpte->page_size = ps;
 gpte->page_shift = offset;

 gpte->eaddr = eaddr;
 gpte->raddr = gpa;


 gpte->may_read = !!(pte & _PAGE_READ);
 gpte->may_write = !!(pte & _PAGE_WRITE);
 gpte->may_execute = !!(pte & _PAGE_EXEC);

 gpte->rc = pte & (_PAGE_ACCESSED | _PAGE_DIRTY);

 if (pte_ret_p)
  *pte_ret_p = pte;

 return 0;
}
