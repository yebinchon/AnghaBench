
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct kvm_nested_guest* nested; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_nested_guest {int cpu_in_guest; int need_tlb_flush; } ;
struct TYPE_3__ {int cpu_in_guest; int need_tlb_flush; } ;
struct kvm {TYPE_1__ arch; } ;
typedef int cpumask_t ;


 int cpu_first_thread_sibling (int) ;
 int cpumask_set_cpu (int,int *) ;
 scalar_t__ cpumask_test_cpu (int,int *) ;
 int do_nothing ;
 int smp_call_function_single (int,int ,int *,int) ;
 int smp_mb () ;
 int threads_per_core ;

__attribute__((used)) static void radix_flush_cpu(struct kvm *kvm, int cpu, struct kvm_vcpu *vcpu)
{
 struct kvm_nested_guest *nested = vcpu->arch.nested;
 cpumask_t *cpu_in_guest;
 int i;

 cpu = cpu_first_thread_sibling(cpu);
 if (nested) {
  cpumask_set_cpu(cpu, &nested->need_tlb_flush);
  cpu_in_guest = &nested->cpu_in_guest;
 } else {
  cpumask_set_cpu(cpu, &kvm->arch.need_tlb_flush);
  cpu_in_guest = &kvm->arch.cpu_in_guest;
 }





 smp_mb();
 for (i = 0; i < threads_per_core; ++i)
  if (cpumask_test_cpu(cpu + i, cpu_in_guest))
   smp_call_function_single(cpu + i, do_nothing, ((void*)0), 1);
}
