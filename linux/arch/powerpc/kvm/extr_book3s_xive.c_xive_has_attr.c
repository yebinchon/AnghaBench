
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_device_attr {int group; int attr; } ;
struct kvm_device {int dummy; } ;


 int ENXIO ;
 int KVMPPC_XICS_FIRST_IRQ ;
 int KVMPPC_XICS_NR_IRQS ;


__attribute__((used)) static int xive_has_attr(struct kvm_device *dev, struct kvm_device_attr *attr)
{

 switch (attr->group) {
 case 128:
  if (attr->attr >= KVMPPC_XICS_FIRST_IRQ &&
      attr->attr < KVMPPC_XICS_NR_IRQS)
   return 0;
  break;
 }
 return -ENXIO;
}
