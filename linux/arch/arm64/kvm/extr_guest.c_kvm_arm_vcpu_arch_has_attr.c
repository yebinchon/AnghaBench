
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_device_attr {int group; } ;


 int ENXIO ;


 int kvm_arm_pmu_v3_has_attr (struct kvm_vcpu*,struct kvm_device_attr*) ;
 int kvm_arm_timer_has_attr (struct kvm_vcpu*,struct kvm_device_attr*) ;

int kvm_arm_vcpu_arch_has_attr(struct kvm_vcpu *vcpu,
          struct kvm_device_attr *attr)
{
 int ret;

 switch (attr->group) {
 case 129:
  ret = kvm_arm_pmu_v3_has_attr(vcpu, attr);
  break;
 case 128:
  ret = kvm_arm_timer_has_attr(vcpu, attr);
  break;
 default:
  ret = -ENXIO;
  break;
 }

 return ret;
}
