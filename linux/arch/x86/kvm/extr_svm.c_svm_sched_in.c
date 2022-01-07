
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ pause_filter_thresh ;
 int shrink_ple_window (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_sched_in(struct kvm_vcpu *vcpu, int cpu)
{
 if (pause_filter_thresh)
  shrink_ple_window(vcpu);
}
