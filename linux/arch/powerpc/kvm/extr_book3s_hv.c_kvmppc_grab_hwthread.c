
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwthread_req; scalar_t__ hwthread_state; scalar_t__ napping; int * kvm_vcore; int * kvm_vcpu; } ;
struct paca_struct {TYPE_1__ kvm_hstate; } ;


 int EBUSY ;
 scalar_t__ KVM_HWTHREAD_IN_KERNEL ;
 struct paca_struct** paca_ptrs ;
 int pr_err (char*,int) ;
 int smp_mb () ;
 int smp_wmb () ;
 int udelay (int) ;

__attribute__((used)) static int kvmppc_grab_hwthread(int cpu)
{
 struct paca_struct *tpaca;
 long timeout = 10000;

 tpaca = paca_ptrs[cpu];


 tpaca->kvm_hstate.kvm_vcpu = ((void*)0);
 tpaca->kvm_hstate.kvm_vcore = ((void*)0);
 tpaca->kvm_hstate.napping = 0;
 smp_wmb();
 tpaca->kvm_hstate.hwthread_req = 1;
 smp_mb();
 while (tpaca->kvm_hstate.hwthread_state == KVM_HWTHREAD_IN_KERNEL) {
  if (--timeout <= 0) {
   pr_err("KVM: couldn't grab cpu %d\n", cpu);
   return -EBUSY;
  }
  udelay(1);
 }
 return 0;
}
