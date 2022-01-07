
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct prtb_entry {int prtb0; } ;
struct kvmppc_pte {int dummy; } ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct kvm {int dummy; } ;
typedef int gva_t ;
typedef int entry ;


 int EINVAL ;
 int PRTB_MASK ;
 int PRTS_MASK ;
 unsigned long be64_to_cpu (int ) ;
 int kvm_read_guest (struct kvm*,unsigned long,struct prtb_entry*,int) ;
 int kvmppc_mmu_walk_radix_tree (struct kvm_vcpu*,int ,struct kvmppc_pte*,unsigned long,int*) ;

int kvmppc_mmu_radix_translate_table(struct kvm_vcpu *vcpu, gva_t eaddr,
         struct kvmppc_pte *gpte, u64 table,
         int table_index, u64 *pte_ret_p)
{
 struct kvm *kvm = vcpu->kvm;
 int ret;
 unsigned long size, ptbl, root;
 struct prtb_entry entry;

 if ((table & PRTS_MASK) > 24)
  return -EINVAL;
 size = 1ul << ((table & PRTS_MASK) + 12);


 if ((table_index * sizeof(entry)) >= size)
  return -EINVAL;


 ptbl = (table & PRTB_MASK) + (table_index * sizeof(entry));
 ret = kvm_read_guest(kvm, ptbl, &entry, sizeof(entry));
 if (ret)
  return ret;


 root = be64_to_cpu(entry.prtb0);

 return kvmppc_mmu_walk_radix_tree(vcpu, eaddr, gpte, root, pte_ret_p);
}
