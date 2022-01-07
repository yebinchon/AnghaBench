
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int online_vcores; int need_tlb_flush; } ;
struct kvm {TYPE_3__ arch; } ;
struct TYPE_6__ {TYPE_1__* kvm_vcore; scalar_t__ kvm_vcpu; } ;
struct TYPE_8__ {TYPE_2__ kvm_hstate; } ;
struct TYPE_5__ {int pcpu; } ;


 int CPU_FTR_ARCH_300 ;
 int cpu_first_thread_sibling (int) ;
 scalar_t__ cpu_has_feature (int ) ;
 int cpumask_clear_cpu (int,int *) ;
 int cpumask_setall (int *) ;
 TYPE_4__* local_paca ;
 int smp_wmb () ;

__attribute__((used)) static int global_invalidates(struct kvm *kvm)
{
 int global;
 int cpu;
 if (kvm->arch.online_vcores == 1 && local_paca->kvm_hstate.kvm_vcpu)
  global = 0;
 else
  global = 1;

 if (!global) {

  smp_wmb();
  cpumask_setall(&kvm->arch.need_tlb_flush);
  cpu = local_paca->kvm_hstate.kvm_vcore->pcpu;




  if (cpu_has_feature(CPU_FTR_ARCH_300))
   cpu = cpu_first_thread_sibling(cpu);
  cpumask_clear_cpu(cpu, &kvm->arch.need_tlb_flush);
 }

 return global;
}
