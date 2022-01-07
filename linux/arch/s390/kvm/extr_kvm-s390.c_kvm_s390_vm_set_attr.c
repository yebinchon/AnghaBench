
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int group; } ;
struct kvm {int dummy; } ;


 int ENXIO ;





 int kvm_s390_set_cpu_model (struct kvm*,struct kvm_device_attr*) ;
 int kvm_s390_set_mem_control (struct kvm*,struct kvm_device_attr*) ;
 int kvm_s390_set_tod (struct kvm*,struct kvm_device_attr*) ;
 int kvm_s390_vm_set_crypto (struct kvm*,struct kvm_device_attr*) ;
 int kvm_s390_vm_set_migration (struct kvm*,struct kvm_device_attr*) ;

__attribute__((used)) static int kvm_s390_vm_set_attr(struct kvm *kvm, struct kvm_device_attr *attr)
{
 int ret;

 switch (attr->group) {
 case 130:
  ret = kvm_s390_set_mem_control(kvm, attr);
  break;
 case 128:
  ret = kvm_s390_set_tod(kvm, attr);
  break;
 case 132:
  ret = kvm_s390_set_cpu_model(kvm, attr);
  break;
 case 131:
  ret = kvm_s390_vm_set_crypto(kvm, attr);
  break;
 case 129:
  ret = kvm_s390_vm_set_migration(kvm, attr);
  break;
 default:
  ret = -ENXIO;
  break;
 }

 return ret;
}
