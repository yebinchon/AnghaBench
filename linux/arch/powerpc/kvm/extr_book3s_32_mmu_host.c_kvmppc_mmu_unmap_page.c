
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_pte {int vpage; } ;
struct kvm_vcpu {int dummy; } ;


 int kvmppc_mmu_pte_vflush (struct kvm_vcpu*,int ,int) ;

void kvmppc_mmu_unmap_page(struct kvm_vcpu *vcpu, struct kvmppc_pte *pte)
{
 kvmppc_mmu_pte_vflush(vcpu, pte->vpage, 0xfffffffffULL);
}
