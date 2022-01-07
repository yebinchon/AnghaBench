
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int group; } ;
struct kvm_device {int dummy; } ;


 int ENXIO ;
__attribute__((used)) static int flic_has_attr(struct kvm_device *dev,
        struct kvm_device_attr *attr)
{
 switch (attr->group) {
 case 128:
 case 129:
 case 130:
 case 132:
 case 133:
 case 137:
 case 138:
 case 131:
 case 135:
 case 136:
 case 134:
  return 0;
 }
 return -ENXIO;
}
