
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvmppc_xics {int real_mode_dbg; int real_mode; struct kvm* kvm; struct kvm_device* dev; } ;
struct kvm_device {struct kvmppc_xics* private; struct kvm* kvm; } ;
struct TYPE_2__ {struct kvmppc_xics* xics; } ;
struct kvm {TYPE_1__ arch; } ;


 int CPU_FTR_ARCH_206 ;
 int CPU_FTR_HVMODE ;
 int DEBUG_REALMODE ;
 int EEXIST ;
 int ENABLE_REALMODE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ cpu_has_feature (int ) ;
 int kfree (struct kvmppc_xics*) ;
 struct kvmppc_xics* kzalloc (int,int ) ;

__attribute__((used)) static int kvmppc_xics_create(struct kvm_device *dev, u32 type)
{
 struct kvmppc_xics *xics;
 struct kvm *kvm = dev->kvm;
 int ret = 0;

 xics = kzalloc(sizeof(*xics), GFP_KERNEL);
 if (!xics)
  return -ENOMEM;

 dev->private = xics;
 xics->dev = dev;
 xics->kvm = kvm;


 if (kvm->arch.xics)
  ret = -EEXIST;
 else
  kvm->arch.xics = xics;

 if (ret) {
  kfree(xics);
  return ret;
 }
 return 0;
}
