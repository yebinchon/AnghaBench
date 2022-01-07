
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tpr_access_reporting; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_tpr_access_ctl {int enabled; scalar_t__ flags; } ;


 int EINVAL ;

__attribute__((used)) static int vcpu_ioctl_tpr_access_reporting(struct kvm_vcpu *vcpu,
        struct kvm_tpr_access_ctl *tac)
{
 if (tac->flags)
  return -EINVAL;
 vcpu->arch.tpr_access_reporting = !!tac->enabled;
 return 0;
}
