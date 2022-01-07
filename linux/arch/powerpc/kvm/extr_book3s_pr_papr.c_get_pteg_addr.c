
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_book3s {int sdr1; } ;
struct kvm_vcpu {int dummy; } ;


 struct kvmppc_vcpu_book3s* to_book3s (struct kvm_vcpu*) ;

__attribute__((used)) static unsigned long get_pteg_addr(struct kvm_vcpu *vcpu, long pte_index)
{
 struct kvmppc_vcpu_book3s *vcpu_book3s = to_book3s(vcpu);
 unsigned long pteg_addr;

 pte_index <<= 4;
 pte_index &= ((1 << ((vcpu_book3s->sdr1 & 0x1f) + 11)) - 1) << 7 | 0x70;
 pteg_addr = vcpu_book3s->sdr1 & 0xfffffffffffc0000ULL;
 pteg_addr |= pte_index;

 return pteg_addr;
}
