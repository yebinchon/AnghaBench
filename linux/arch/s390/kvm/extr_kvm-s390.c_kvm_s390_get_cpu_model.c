
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int attr; } ;
struct kvm {int dummy; } ;


 int ENXIO ;






 int kvm_s390_get_machine (struct kvm*,struct kvm_device_attr*) ;
 int kvm_s390_get_machine_feat (struct kvm*,struct kvm_device_attr*) ;
 int kvm_s390_get_machine_subfunc (struct kvm*,struct kvm_device_attr*) ;
 int kvm_s390_get_processor (struct kvm*,struct kvm_device_attr*) ;
 int kvm_s390_get_processor_feat (struct kvm*,struct kvm_device_attr*) ;
 int kvm_s390_get_processor_subfunc (struct kvm*,struct kvm_device_attr*) ;

__attribute__((used)) static int kvm_s390_get_cpu_model(struct kvm *kvm, struct kvm_device_attr *attr)
{
 int ret = -ENXIO;

 switch (attr->attr) {
 case 130:
  ret = kvm_s390_get_processor(kvm, attr);
  break;
 case 133:
  ret = kvm_s390_get_machine(kvm, attr);
  break;
 case 129:
  ret = kvm_s390_get_processor_feat(kvm, attr);
  break;
 case 132:
  ret = kvm_s390_get_machine_feat(kvm, attr);
  break;
 case 128:
  ret = kvm_s390_get_processor_subfunc(kvm, attr);
  break;
 case 131:
  ret = kvm_s390_get_machine_subfunc(kvm, attr);
  break;
 }
 return ret;
}
