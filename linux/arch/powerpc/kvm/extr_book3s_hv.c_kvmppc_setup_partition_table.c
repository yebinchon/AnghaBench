
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vrma_slb_v; unsigned long sdr1; unsigned long process_table; int lpid; int pgtable; } ;
struct kvm {TYPE_1__ arch; } ;


 unsigned long PATB_GR ;
 unsigned long PATB_HR ;
 unsigned long RADIX_PGD_INDEX_SIZE ;
 int SLB_VSID_L ;
 int SLB_VSID_LP ;
 unsigned long __pa (int ) ;
 int kvm_is_radix (struct kvm*) ;
 int kvmhv_set_ptbl_entry (int ,unsigned long,unsigned long) ;
 unsigned long radix__get_tree_size () ;

void kvmppc_setup_partition_table(struct kvm *kvm)
{
 unsigned long dw0, dw1;

 if (!kvm_is_radix(kvm)) {

  dw0 = ((kvm->arch.vrma_slb_v & SLB_VSID_L) >> 1) |
   ((kvm->arch.vrma_slb_v & SLB_VSID_LP) << 1);

  dw0 |= kvm->arch.sdr1;


  dw1 = kvm->arch.process_table;
 } else {
  dw0 = PATB_HR | radix__get_tree_size() |
   __pa(kvm->arch.pgtable) | RADIX_PGD_INDEX_SIZE;
  dw1 = PATB_GR | kvm->arch.process_table;
 }
 kvmhv_set_ptbl_entry(kvm->arch.lpid, dw0, dw1);
}
