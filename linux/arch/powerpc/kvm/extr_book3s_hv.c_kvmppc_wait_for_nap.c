
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kvm_vcore; } ;
struct TYPE_4__ {TYPE_1__ kvm_hstate; } ;


 int HMT_low () ;
 int HMT_medium () ;
 TYPE_2__** paca_ptrs ;
 int pr_err (char*,int) ;
 int smp_processor_id () ;

__attribute__((used)) static void kvmppc_wait_for_nap(int n_threads)
{
 int cpu = smp_processor_id();
 int i, loops;

 if (n_threads <= 1)
  return;
 for (loops = 0; loops < 1000000; ++loops) {






  for (i = 1; i < n_threads; ++i)
   if (paca_ptrs[cpu + i]->kvm_hstate.kvm_vcore)
    break;
  if (i == n_threads) {
   HMT_medium();
   return;
  }
  HMT_low();
 }
 HMT_medium();
 for (i = 1; i < n_threads; ++i)
  if (paca_ptrs[cpu + i]->kvm_hstate.kvm_vcore)
   pr_err("KVM: CPU %d seems to be stuck\n", cpu + i);
}
