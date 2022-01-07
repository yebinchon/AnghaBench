
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvmppc_mmu_hpte_sysexit () ;
 int * kvmppc_pr_ops ;

void kvmppc_book3s_exit_pr(void)
{
 kvmppc_pr_ops = ((void*)0);
 kvmppc_mmu_hpte_sysexit();
}
