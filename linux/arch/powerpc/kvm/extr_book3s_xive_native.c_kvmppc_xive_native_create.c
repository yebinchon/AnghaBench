
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvmppc_xive {scalar_t__ vp_base; int * ops; int single_escalation; int lock; int mapping_lock; struct kvm* kvm; struct kvm_device* dev; } ;
struct kvm_device {struct kvmppc_xive* private; struct kvm* kvm; } ;
struct TYPE_2__ {struct kvmppc_xive* xive; } ;
struct kvm {TYPE_1__ arch; } ;


 int EEXIST ;
 int ENOMEM ;
 int ENXIO ;
 int KVM_MAX_VCPUS ;
 scalar_t__ XIVE_INVALID_VP ;
 struct kvmppc_xive* kvmppc_xive_get_device (struct kvm*,int ) ;
 int kvmppc_xive_native_ops ;
 int mutex_init (int *) ;
 int pr_devel (char*,...) ;
 scalar_t__ xive_native_alloc_vp_block (int ) ;
 int xive_native_has_single_escalation () ;

__attribute__((used)) static int kvmppc_xive_native_create(struct kvm_device *dev, u32 type)
{
 struct kvmppc_xive *xive;
 struct kvm *kvm = dev->kvm;
 int ret = 0;

 pr_devel("Creating xive native device\n");

 if (kvm->arch.xive)
  return -EEXIST;

 xive = kvmppc_xive_get_device(kvm, type);
 if (!xive)
  return -ENOMEM;

 dev->private = xive;
 xive->dev = dev;
 xive->kvm = kvm;
 kvm->arch.xive = xive;
 mutex_init(&xive->mapping_lock);
 mutex_init(&xive->lock);






 xive->vp_base = xive_native_alloc_vp_block(KVM_MAX_VCPUS);
 pr_devel("VP_Base=%x\n", xive->vp_base);

 if (xive->vp_base == XIVE_INVALID_VP)
  ret = -ENXIO;

 xive->single_escalation = xive_native_has_single_escalation();
 xive->ops = &kvmppc_xive_native_ops;

 if (ret)
  return ret;

 return 0;
}
