
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_xive {int dummy; } ;
struct kvm_device_attr {int group; int addr; int attr; } ;
struct kvm_device {struct kvmppc_xive* private; } ;


 int ENXIO ;

 int xive_get_source (struct kvmppc_xive*,int ,int ) ;

__attribute__((used)) static int xive_get_attr(struct kvm_device *dev, struct kvm_device_attr *attr)
{
 struct kvmppc_xive *xive = dev->private;


 switch (attr->group) {
 case 128:
  return xive_get_source(xive, attr->attr, attr->addr);
 }
 return -ENXIO;
}
