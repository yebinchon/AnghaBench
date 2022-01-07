
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mask; } ;
struct kvm_s390_gisa_interrupt {int * origin; int timer; TYPE_2__ alert; } ;
struct TYPE_3__ {struct kvm_s390_gisa_interrupt gisa_int; } ;
struct kvm {TYPE_1__ arch; } ;


 int KVM_EVENT (int,char*,struct kvm*,scalar_t__) ;
 int cpu_relax () ;
 scalar_t__ gisa_in_alert_list (int *) ;
 int hrtimer_cancel (int *) ;

void kvm_s390_gisa_destroy(struct kvm *kvm)
{
 struct kvm_s390_gisa_interrupt *gi = &kvm->arch.gisa_int;

 if (!gi->origin)
  return;
 if (gi->alert.mask)
  KVM_EVENT(3, "vm 0x%pK has unexpected iam 0x%02x",
     kvm, gi->alert.mask);
 while (gisa_in_alert_list(gi->origin))
  cpu_relax();
 hrtimer_cancel(&gi->timer);
 gi->origin = ((void*)0);
}
