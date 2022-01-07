
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcb_control_area {int pause_filter_count; } ;
struct vcpu_svm {TYPE_1__* vmcb; } ;
struct kvm_vcpu {int vcpu_id; } ;
struct TYPE_2__ {struct vmcb_control_area control; } ;


 int VMCB_INTERCEPTS ;
 int __grow_ple_window (int,int ,int ,int ) ;
 int mark_dirty (TYPE_1__*,int ) ;
 int pause_filter_count ;
 int pause_filter_count_grow ;
 int pause_filter_count_max ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int trace_kvm_ple_window_update (int ,int,int) ;

__attribute__((used)) static void grow_ple_window(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 struct vmcb_control_area *control = &svm->vmcb->control;
 int old = control->pause_filter_count;

 control->pause_filter_count = __grow_ple_window(old,
       pause_filter_count,
       pause_filter_count_grow,
       pause_filter_count_max);

 if (control->pause_filter_count != old) {
  mark_dirty(svm->vmcb, VMCB_INTERCEPTS);
  trace_kvm_ple_window_update(vcpu->vcpu_id,
         control->pause_filter_count, old);
 }
}
