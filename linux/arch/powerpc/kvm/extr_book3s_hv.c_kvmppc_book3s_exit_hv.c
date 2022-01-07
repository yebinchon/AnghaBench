
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvmhv_nested_exit () ;
 int kvmppc_free_host_rm_ops () ;
 int * kvmppc_hv_ops ;
 int kvmppc_radix_exit () ;
 scalar_t__ kvmppc_radix_possible () ;

__attribute__((used)) static void kvmppc_book3s_exit_hv(void)
{
 kvmppc_free_host_rm_ops();
 if (kvmppc_radix_possible())
  kvmppc_radix_exit();
 kvmppc_hv_ops = ((void*)0);
 kvmhv_nested_exit();
}
