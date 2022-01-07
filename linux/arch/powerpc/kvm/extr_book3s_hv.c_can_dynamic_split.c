
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcore {int num_threads; scalar_t__ kvm; int preempt_list; } ;
struct core_info {int max_subcore_threads; int n_subcores; int total_threads; int* subcore_threads; struct kvmppc_vcore** vc; } ;


 int CPU_FTR_ARCH_207S ;
 int cpu_has_feature (int ) ;
 int init_vcore_to_run (struct kvmppc_vcore*) ;
 scalar_t__ kvm_is_radix (scalar_t__) ;
 int list_del_init (int *) ;
 scalar_t__ no_mixing_hpt_and_radix ;
 scalar_t__ one_vm_per_core ;
 int subcore_config_ok (int,int) ;

__attribute__((used)) static bool can_dynamic_split(struct kvmppc_vcore *vc, struct core_info *cip)
{
 int n_threads = vc->num_threads;
 int sub;

 if (!cpu_has_feature(CPU_FTR_ARCH_207S))
  return 0;


 if (one_vm_per_core && vc->kvm != cip->vc[0]->kvm)
  return 0;


 if (no_mixing_hpt_and_radix &&
     kvm_is_radix(vc->kvm) != kvm_is_radix(cip->vc[0]->kvm))
  return 0;

 if (n_threads < cip->max_subcore_threads)
  n_threads = cip->max_subcore_threads;
 if (!subcore_config_ok(cip->n_subcores + 1, n_threads))
  return 0;
 cip->max_subcore_threads = n_threads;

 sub = cip->n_subcores;
 ++cip->n_subcores;
 cip->total_threads += vc->num_threads;
 cip->subcore_threads[sub] = vc->num_threads;
 cip->vc[sub] = vc;
 init_vcore_to_run(vc);
 list_del_init(&vc->preempt_list);

 return 1;
}
