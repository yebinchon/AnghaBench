
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* shared; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
typedef int gva_t ;
struct TYPE_3__ {int msr; } ;


 int MSR_IS ;
 int get_cur_pid (struct kvm_vcpu*) ;
 int kvmppc_e500_tlb_search (struct kvm_vcpu*,int ,int ,unsigned int) ;

int kvmppc_mmu_itlb_index(struct kvm_vcpu *vcpu, gva_t eaddr)
{
 unsigned int as = !!(vcpu->arch.shared->msr & MSR_IS);

 return kvmppc_e500_tlb_search(vcpu, eaddr, get_cur_pid(vcpu), as);
}
