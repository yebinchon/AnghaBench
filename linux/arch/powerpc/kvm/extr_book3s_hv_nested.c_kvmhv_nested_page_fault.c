
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_nested_guest* nested; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_run {int dummy; } ;
struct kvm_nested_guest {int tlb_lock; } ;


 long __kvmhv_nested_page_fault (struct kvm_run*,struct kvm_vcpu*,struct kvm_nested_guest*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

long int kvmhv_nested_page_fault(struct kvm_run *run, struct kvm_vcpu *vcpu)
{
 struct kvm_nested_guest *gp = vcpu->arch.nested;
 long int ret;

 mutex_lock(&gp->tlb_lock);
 ret = __kvmhv_nested_page_fault(run, vcpu, gp);
 mutex_unlock(&gp->tlb_lock);
 return ret;
}
