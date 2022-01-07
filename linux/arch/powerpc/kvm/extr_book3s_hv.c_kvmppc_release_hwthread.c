
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * kvm_split_mode; int * kvm_vcore; int * kvm_vcpu; scalar_t__ hwthread_req; } ;
struct paca_struct {TYPE_1__ kvm_hstate; } ;


 struct paca_struct** paca_ptrs ;

__attribute__((used)) static void kvmppc_release_hwthread(int cpu)
{
 struct paca_struct *tpaca;

 tpaca = paca_ptrs[cpu];
 tpaca->kvm_hstate.hwthread_req = 0;
 tpaca->kvm_hstate.kvm_vcpu = ((void*)0);
 tpaca->kvm_hstate.kvm_vcore = ((void*)0);
 tpaca->kvm_hstate.kvm_split_mode = ((void*)0);
}
