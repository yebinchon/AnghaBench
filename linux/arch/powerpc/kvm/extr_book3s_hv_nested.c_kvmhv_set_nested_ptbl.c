
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_nested_guest {int process_table; int shadow_lpid; int shadow_pgtable; } ;


 unsigned long PATB_HR ;
 unsigned long RADIX_PGD_INDEX_SIZE ;
 unsigned long __pa (int ) ;
 int kvmhv_set_ptbl_entry (int ,unsigned long,int ) ;
 unsigned long radix__get_tree_size () ;

__attribute__((used)) static void kvmhv_set_nested_ptbl(struct kvm_nested_guest *gp)
{
 unsigned long dw0;

 dw0 = PATB_HR | radix__get_tree_size() |
  __pa(gp->shadow_pgtable) | RADIX_PGD_INDEX_SIZE;
 kvmhv_set_ptbl_entry(gp->shadow_lpid, dw0, gp->process_table);
}
