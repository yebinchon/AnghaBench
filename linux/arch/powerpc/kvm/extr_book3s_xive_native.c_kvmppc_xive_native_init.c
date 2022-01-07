
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_xive {int dummy; } ;
struct kvm_device {scalar_t__ private; } ;


 int xive_native_debugfs_init (struct kvmppc_xive*) ;

__attribute__((used)) static void kvmppc_xive_native_init(struct kvm_device *dev)
{
 struct kvmppc_xive *xive = (struct kvmppc_xive *)dev->private;


 xive_native_debugfs_init(xive);
}
