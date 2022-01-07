
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int tsc_offset_adjustment; scalar_t__ last_host_tsc; int tsc_catchup; int last_guest_tsc; int wbinvd_dirty_mask; } ;
struct kvm_vcpu {int cpu; TYPE_3__* kvm; TYPE_1__ arch; } ;
typedef scalar_t__ s64 ;
struct TYPE_8__ {int (* vcpu_load ) (struct kvm_vcpu*,int) ;scalar_t__ (* has_wbinvd_exit ) () ;} ;
struct TYPE_6__ {int use_master_clock; } ;
struct TYPE_7__ {TYPE_2__ arch; } ;


 int KVM_REQ_CLOCK_UPDATE ;
 int KVM_REQ_GLOBAL_CLOCK_UPDATE ;
 int KVM_REQ_MIGRATE_TIMER ;
 int KVM_REQ_STEAL_UPDATE ;
 int TIF_NEED_FPU_LOAD ;
 int adjust_tsc_offset_host (struct kvm_vcpu*,int) ;
 int cpumask_set_cpu (int,int ) ;
 int fpregs_assert_state_consistent () ;
 scalar_t__ kvm_check_tsc_unstable () ;
 int kvm_compute_tsc_offset (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_lapic_hv_timer_in_use (struct kvm_vcpu*) ;
 int kvm_lapic_restart_hv_timer (struct kvm_vcpu*) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_write_tsc_offset (struct kvm_vcpu*,int ) ;
 TYPE_4__* kvm_x86_ops ;
 int mark_tsc_unstable (char*) ;
 scalar_t__ need_emulate_wbinvd (struct kvm_vcpu*) ;
 scalar_t__ rdtsc () ;
 int smp_call_function_single (int,int ,int *,int) ;
 scalar_t__ stub1 () ;
 int stub2 (struct kvm_vcpu*,int) ;
 int switch_fpu_return () ;
 scalar_t__ test_thread_flag (int ) ;
 scalar_t__ unlikely (int) ;
 int wbinvd_ipi ;

void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
{

 if (need_emulate_wbinvd(vcpu)) {
  if (kvm_x86_ops->has_wbinvd_exit())
   cpumask_set_cpu(cpu, vcpu->arch.wbinvd_dirty_mask);
  else if (vcpu->cpu != -1 && vcpu->cpu != cpu)
   smp_call_function_single(vcpu->cpu,
     wbinvd_ipi, ((void*)0), 1);
 }

 kvm_x86_ops->vcpu_load(vcpu, cpu);

 fpregs_assert_state_consistent();
 if (test_thread_flag(TIF_NEED_FPU_LOAD))
  switch_fpu_return();


 if (unlikely(vcpu->arch.tsc_offset_adjustment)) {
  adjust_tsc_offset_host(vcpu, vcpu->arch.tsc_offset_adjustment);
  vcpu->arch.tsc_offset_adjustment = 0;
  kvm_make_request(KVM_REQ_CLOCK_UPDATE, vcpu);
 }

 if (unlikely(vcpu->cpu != cpu) || kvm_check_tsc_unstable()) {
  s64 tsc_delta = !vcpu->arch.last_host_tsc ? 0 :
    rdtsc() - vcpu->arch.last_host_tsc;
  if (tsc_delta < 0)
   mark_tsc_unstable("KVM discovered backwards TSC");

  if (kvm_check_tsc_unstable()) {
   u64 offset = kvm_compute_tsc_offset(vcpu,
      vcpu->arch.last_guest_tsc);
   kvm_vcpu_write_tsc_offset(vcpu, offset);
   vcpu->arch.tsc_catchup = 1;
  }

  if (kvm_lapic_hv_timer_in_use(vcpu))
   kvm_lapic_restart_hv_timer(vcpu);





  if (!vcpu->kvm->arch.use_master_clock || vcpu->cpu == -1)
   kvm_make_request(KVM_REQ_GLOBAL_CLOCK_UPDATE, vcpu);
  if (vcpu->cpu != cpu)
   kvm_make_request(KVM_REQ_MIGRATE_TIMER, vcpu);
  vcpu->cpu = cpu;
 }

 kvm_make_request(KVM_REQ_STEAL_UPDATE, vcpu);
}
