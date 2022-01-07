
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_xics {int dummy; } ;
struct kvm_device {scalar_t__ private; } ;


 int xics_debugfs_init (struct kvmppc_xics*) ;

__attribute__((used)) static void kvmppc_xics_init(struct kvm_device *dev)
{
 struct kvmppc_xics *xics = (struct kvmppc_xics *)dev->private;

 xics_debugfs_init(xics);
}
