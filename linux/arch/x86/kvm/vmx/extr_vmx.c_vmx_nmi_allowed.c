
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {scalar_t__ nested_run_pending; } ;
struct TYPE_6__ {TYPE_2__* loaded_vmcs; TYPE_1__ nested; } ;
struct TYPE_5__ {scalar_t__ soft_vnmi_blocked; } ;


 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_MOV_SS ;
 int GUEST_INTR_STATE_NMI ;
 int GUEST_INTR_STATE_STI ;
 int enable_vnmi ;
 TYPE_3__* to_vmx (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;

__attribute__((used)) static int vmx_nmi_allowed(struct kvm_vcpu *vcpu)
{
 if (to_vmx(vcpu)->nested.nested_run_pending)
  return 0;

 if (!enable_vnmi &&
     to_vmx(vcpu)->loaded_vmcs->soft_vnmi_blocked)
  return 0;

 return !(vmcs_read32(GUEST_INTERRUPTIBILITY_INFO) &
    (GUEST_INTR_STATE_MOV_SS | GUEST_INTR_STATE_STI
     | GUEST_INTR_STATE_NMI));
}
