
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled_gmap; scalar_t__ cputm_enabled; } ;
struct kvm_vcpu {int cpu; TYPE_1__ arch; } ;


 int CPUSTAT_RUNNING ;
 int __stop_cpu_timer_accounting (struct kvm_vcpu*) ;
 int gmap_disable (int ) ;
 int gmap_get_enabled () ;
 int is_vcpu_idle (struct kvm_vcpu*) ;
 int kvm_s390_clear_cpuflags (struct kvm_vcpu*,int ) ;

void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
{
 vcpu->cpu = -1;
 if (vcpu->arch.cputm_enabled && !is_vcpu_idle(vcpu))
  __stop_cpu_timer_accounting(vcpu);
 kvm_s390_clear_cpuflags(vcpu, CPUSTAT_RUNNING);
 vcpu->arch.enabled_gmap = gmap_get_enabled();
 gmap_disable(vcpu->arch.enabled_gmap);

}
