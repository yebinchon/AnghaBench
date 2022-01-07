
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KVM_FEATURE_PV_EOI ;
 int MSR_KVM_PV_EOI_EN ;
 int kvm_disable_steal_time () ;
 scalar_t__ kvm_para_has_feature (int ) ;
 int kvm_pv_disable_apf () ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void kvm_pv_guest_cpu_reboot(void *unused)
{





 if (kvm_para_has_feature(KVM_FEATURE_PV_EOI))
  wrmsrl(MSR_KVM_PV_EOI_EN, 0);
 kvm_pv_disable_apf();
 kvm_disable_steal_time();
}
