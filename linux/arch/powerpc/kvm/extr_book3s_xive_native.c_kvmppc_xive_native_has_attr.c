
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int group; int attr; } ;
struct kvm_device {int dummy; } ;


 int ENXIO ;
 int KVMPPC_XIVE_FIRST_IRQ ;
 int KVMPPC_XIVE_NR_IRQS ;
__attribute__((used)) static int kvmppc_xive_native_has_attr(struct kvm_device *dev,
           struct kvm_device_attr *attr)
{
 switch (attr->group) {
 case 133:
  switch (attr->attr) {
  case 128:
  case 134:
   return 0;
  }
  break;
 case 131:
 case 130:
 case 129:
  if (attr->attr >= KVMPPC_XIVE_FIRST_IRQ &&
      attr->attr < KVMPPC_XIVE_NR_IRQS)
   return 0;
  break;
 case 132:
  return 0;
 }
 return -ENXIO;
}
