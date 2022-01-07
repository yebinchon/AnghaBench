
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_xics {int dummy; } ;
struct kvm_device_attr {int group; int addr; int attr; } ;
struct kvm_device {struct kvmppc_xics* private; } ;


 int ENXIO ;

 int xics_get_source (struct kvmppc_xics*,int ,int ) ;

__attribute__((used)) static int xics_get_attr(struct kvm_device *dev, struct kvm_device_attr *attr)
{
 struct kvmppc_xics *xics = dev->private;

 switch (attr->group) {
 case 128:
  return xics_get_source(xics, attr->attr, attr->addr);
 }
 return -ENXIO;
}
