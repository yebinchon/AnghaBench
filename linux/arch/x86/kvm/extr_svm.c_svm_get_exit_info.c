
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct vmcb_control_area {int exit_info_2; int exit_info_1; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vmcb; } ;
struct TYPE_3__ {struct vmcb_control_area control; } ;


 TYPE_2__* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_get_exit_info(struct kvm_vcpu *vcpu, u64 *info1, u64 *info2)
{
 struct vmcb_control_area *control = &to_svm(vcpu)->vmcb->control;

 *info1 = control->exit_info_1;
 *info2 = control->exit_info_2;
}
