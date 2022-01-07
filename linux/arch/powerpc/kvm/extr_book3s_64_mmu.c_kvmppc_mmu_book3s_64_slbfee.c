
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct kvmppc_slb {int origv; } ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;


 int ENOENT ;
 struct kvmppc_slb* kvmppc_mmu_book3s_64_find_slbe (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int kvmppc_mmu_book3s_64_slbfee(struct kvm_vcpu *vcpu, gva_t eaddr,
           ulong *ret_slb)
{
 struct kvmppc_slb *slbe = kvmppc_mmu_book3s_64_find_slbe(vcpu, eaddr);

 if (slbe) {
  *ret_slb = slbe->origv;
  return 0;
 }
 *ret_slb = 0;
 return -ENOENT;
}
