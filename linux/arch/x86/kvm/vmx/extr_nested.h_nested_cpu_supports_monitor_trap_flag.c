
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int procbased_ctls_high; } ;
struct TYPE_5__ {TYPE_1__ msrs; } ;
struct TYPE_6__ {TYPE_2__ nested; } ;


 int CPU_BASED_MONITOR_TRAP_FLAG ;
 TYPE_3__* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool nested_cpu_supports_monitor_trap_flag(struct kvm_vcpu *vcpu)
{
 return to_vmx(vcpu)->nested.msrs.procbased_ctls_high &
   CPU_BASED_MONITOR_TRAP_FLAG;
}
