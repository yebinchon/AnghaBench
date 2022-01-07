
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_xive {int dummy; } ;
struct kvm_device_attr {int group; int addr; int attr; } ;
struct kvm_device {struct kvmppc_xive* private; } ;


 int ENXIO ;







 int kvmppc_xive_native_eq_sync (struct kvmppc_xive*) ;
 int kvmppc_xive_native_set_queue_config (struct kvmppc_xive*,int ,int ) ;
 int kvmppc_xive_native_set_source (struct kvmppc_xive*,int ,int ) ;
 int kvmppc_xive_native_set_source_config (struct kvmppc_xive*,int ,int ) ;
 int kvmppc_xive_native_sync_source (struct kvmppc_xive*,int ,int ) ;
 int kvmppc_xive_reset (struct kvmppc_xive*) ;

__attribute__((used)) static int kvmppc_xive_native_set_attr(struct kvm_device *dev,
           struct kvm_device_attr *attr)
{
 struct kvmppc_xive *xive = dev->private;

 switch (attr->group) {
 case 133:
  switch (attr->attr) {
  case 128:
   return kvmppc_xive_reset(xive);
  case 134:
   return kvmppc_xive_native_eq_sync(xive);
  }
  break;
 case 131:
  return kvmppc_xive_native_set_source(xive, attr->attr,
           attr->addr);
 case 130:
  return kvmppc_xive_native_set_source_config(xive, attr->attr,
           attr->addr);
 case 132:
  return kvmppc_xive_native_set_queue_config(xive, attr->attr,
          attr->addr);
 case 129:
  return kvmppc_xive_native_sync_source(xive, attr->attr,
            attr->addr);
 }
 return -ENXIO;
}
