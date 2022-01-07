
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int dummy; } ;


 int e500_mmu_host_uninit (struct kvmppc_vcpu_e500*) ;
 int free_gtlb (struct kvmppc_vcpu_e500*) ;

void kvmppc_e500_tlb_uninit(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 free_gtlb(vcpu_e500);
 e500_mmu_host_uninit(vcpu_e500);
}
