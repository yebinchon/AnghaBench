
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int attr; scalar_t__ flags; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 int ENXIO ;



 int kvm_s390_get_tod_ext (struct kvm*,struct kvm_device_attr*) ;
 int kvm_s390_get_tod_high (struct kvm*,struct kvm_device_attr*) ;
 int kvm_s390_get_tod_low (struct kvm*,struct kvm_device_attr*) ;

__attribute__((used)) static int kvm_s390_get_tod(struct kvm *kvm, struct kvm_device_attr *attr)
{
 int ret;

 if (attr->flags)
  return -EINVAL;

 switch (attr->attr) {
 case 130:
  ret = kvm_s390_get_tod_ext(kvm, attr);
  break;
 case 129:
  ret = kvm_s390_get_tod_high(kvm, attr);
  break;
 case 128:
  ret = kvm_s390_get_tod_low(kvm, attr);
  break;
 default:
  ret = -ENXIO;
  break;
 }
 return ret;
}
