
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kvm_exit () ;
 int kvmppc_book3s_exit_pr () ;
 int kvmppc_xive_exit_module () ;
 int kvmppc_xive_native_exit_module () ;
 scalar_t__ xics_on_xive () ;

__attribute__((used)) static void kvmppc_book3s_exit(void)
{
 kvm_exit();
}
