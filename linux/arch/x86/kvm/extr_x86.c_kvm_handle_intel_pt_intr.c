
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int global_status; } ;
struct TYPE_4__ {TYPE_1__ pmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int KVM_REQ_PMI ;
 int MSR_CORE_PERF_GLOBAL_OVF_CTRL_TRACE_TOPA_PMI_BIT ;
 int __set_bit (int ,unsigned long*) ;
 struct kvm_vcpu* __this_cpu_read (int ) ;
 int current_vcpu ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_handle_intel_pt_intr(void)
{
 struct kvm_vcpu *vcpu = __this_cpu_read(current_vcpu);

 kvm_make_request(KVM_REQ_PMI, vcpu);
 __set_bit(MSR_CORE_PERF_GLOBAL_OVF_CTRL_TRACE_TOPA_PMI_BIT,
   (unsigned long *)&vcpu->arch.pmu.global_status);
}
