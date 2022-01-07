
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_xics {int max_icsid; struct kvmppc_xics** ics; int dentry; struct kvm* kvm; struct kvmppc_xics* private; } ;
struct kvm_device {int max_icsid; struct kvm_device** ics; int dentry; struct kvm* kvm; struct kvm_device* private; } ;
struct TYPE_2__ {int * xics; } ;
struct kvm {TYPE_1__ arch; } ;


 int debugfs_remove (int ) ;
 int kfree (struct kvmppc_xics*) ;

__attribute__((used)) static void kvmppc_xics_free(struct kvm_device *dev)
{
 struct kvmppc_xics *xics = dev->private;
 int i;
 struct kvm *kvm = xics->kvm;

 debugfs_remove(xics->dentry);

 if (kvm)
  kvm->arch.xics = ((void*)0);

 for (i = 0; i <= xics->max_icsid; i++)
  kfree(xics->ics[i]);
 kfree(xics);
 kfree(dev);
}
