
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int h2g_tlb1_rmap; } ;


 int kfree (int ) ;

void e500_mmu_host_uninit(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 kfree(vcpu_e500->h2g_tlb1_rmap);
}
