
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct swait_queue_head {int dummy; } ;
struct TYPE_4__ {int thread_cpu; } ;
struct TYPE_3__ {int halt_wakeup; } ;
struct kvm_vcpu {int cpu; TYPE_2__ arch; TYPE_1__ stat; } ;


 int READ_ONCE (int ) ;
 scalar_t__ cpu_online (int) ;
 struct swait_queue_head* kvm_arch_vcpu_wq (struct kvm_vcpu*) ;
 scalar_t__ kvmppc_ipi_thread (int) ;
 int nr_cpu_ids ;
 int smp_send_reschedule (int) ;
 int swake_up_one (struct swait_queue_head*) ;
 scalar_t__ swq_has_sleeper (struct swait_queue_head*) ;

__attribute__((used)) static void kvmppc_fast_vcpu_kick_hv(struct kvm_vcpu *vcpu)
{
 int cpu;
 struct swait_queue_head *wqp;

 wqp = kvm_arch_vcpu_wq(vcpu);
 if (swq_has_sleeper(wqp)) {
  swake_up_one(wqp);
  ++vcpu->stat.halt_wakeup;
 }

 cpu = READ_ONCE(vcpu->arch.thread_cpu);
 if (cpu >= 0 && kvmppc_ipi_thread(cpu))
  return;


 cpu = vcpu->cpu;
 if (cpu >= 0 && cpu < nr_cpu_ids && cpu_online(cpu))
  smp_send_reschedule(cpu);
}
