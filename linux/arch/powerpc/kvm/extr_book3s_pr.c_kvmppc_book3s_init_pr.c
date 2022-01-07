
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int owner; } ;


 int THIS_MODULE ;
 TYPE_1__ kvm_ops_pr ;
 int kvmppc_core_check_processor_compat_pr () ;
 int kvmppc_mmu_hpte_sysinit () ;
 TYPE_1__* kvmppc_pr_ops ;

int kvmppc_book3s_init_pr(void)
{
 int r;

 r = kvmppc_core_check_processor_compat_pr();
 if (r < 0)
  return r;

 kvm_ops_pr.owner = THIS_MODULE;
 kvmppc_pr_ops = &kvm_ops_pr;

 r = kvmppc_mmu_hpte_sysinit();
 return r;
}
