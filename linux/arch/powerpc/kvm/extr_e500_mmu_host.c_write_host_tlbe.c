
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_3__* kvm; } ;
struct kvmppc_vcpu_e500 {TYPE_2__ vcpu; } ;
struct kvm_book3e_206_tlb_entry {int mas2; } ;
struct TYPE_4__ {int lpid; } ;
struct TYPE_6__ {TYPE_1__ arch; } ;


 int MAS0_ESEL (int ) ;
 int MAS0_TLBSEL (int) ;
 int __write_host_tlbe (struct kvm_book3e_206_tlb_entry*,int,int ) ;
 int get_host_mas0 (int ) ;
 int to_htlb1_esel (int) ;

__attribute__((used)) static inline void write_host_tlbe(struct kvmppc_vcpu_e500 *vcpu_e500,
  int tlbsel, int sesel, struct kvm_book3e_206_tlb_entry *stlbe)
{
 u32 mas0;

 if (tlbsel == 0) {
  mas0 = get_host_mas0(stlbe->mas2);
  __write_host_tlbe(stlbe, mas0, vcpu_e500->vcpu.kvm->arch.lpid);
 } else {
  __write_host_tlbe(stlbe,
      MAS0_TLBSEL(1) |
      MAS0_ESEL(to_htlb1_esel(sesel)),
      vcpu_e500->vcpu.kvm->arch.lpid);
 }
}
