
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct kvmppc_xive {int dummy; } ;
struct TYPE_3__ {struct kvmppc_xive* xics_on_xive; struct kvmppc_xive* native; } ;
struct TYPE_4__ {TYPE_1__ xive_devices; } ;
struct kvm {TYPE_2__ arch; } ;


 int GFP_KERNEL ;
 scalar_t__ KVM_DEV_TYPE_XIVE ;
 struct kvmppc_xive* kzalloc (int,int ) ;
 int memset (struct kvmppc_xive*,int ,int) ;

struct kvmppc_xive *kvmppc_xive_get_device(struct kvm *kvm, u32 type)
{
 struct kvmppc_xive **kvm_xive_device = type == KVM_DEV_TYPE_XIVE ?
  &kvm->arch.xive_devices.native :
  &kvm->arch.xive_devices.xics_on_xive;
 struct kvmppc_xive *xive = *kvm_xive_device;

 if (!xive) {
  xive = kzalloc(sizeof(*xive), GFP_KERNEL);
  *kvm_xive_device = xive;
 } else {
  memset(xive, 0, sizeof(*xive));
 }

 return xive;
}
