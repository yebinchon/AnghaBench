
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int group; int attr; } ;
struct kvm_device {int dummy; } ;


 int ENXIO ;




 int MAX_SRC ;

__attribute__((used)) static int mpic_has_attr(struct kvm_device *dev, struct kvm_device_attr *attr)
{
 switch (attr->group) {
 case 129:
  switch (attr->attr) {
  case 131:
   return 0;
  }

  break;

 case 128:
  return 0;

 case 130:
  if (attr->attr > MAX_SRC)
   break;

  return 0;
 }

 return -ENXIO;
}
