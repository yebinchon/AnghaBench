
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cputm_enabled; int enabled_gmap; } ;
struct kvm_vcpu {int cpu; TYPE_1__ arch; } ;


 int CPUSTAT_RUNNING ;
 int __start_cpu_timer_accounting (struct kvm_vcpu*) ;
 int gmap_enable (int ) ;
 int is_vcpu_idle (struct kvm_vcpu*) ;
 int kvm_s390_set_cpuflags (struct kvm_vcpu*,int ) ;

void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
{

 gmap_enable(vcpu->arch.enabled_gmap);
 kvm_s390_set_cpuflags(vcpu, CPUSTAT_RUNNING);
 if (vcpu->arch.cputm_enabled && !is_vcpu_idle(vcpu))
  __start_cpu_timer_accounting(vcpu);
 vcpu->cpu = cpu;
}
