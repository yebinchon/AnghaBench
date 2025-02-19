
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_12__ {int function; } ;
struct TYPE_10__ {int ref_lock; scalar_t__ mask; } ;
struct kvm_s390_gisa_interrupt {int expires; TYPE_4__* origin; TYPE_5__ timer; TYPE_3__ alert; } ;
struct kvm_s390_gisa {int dummy; } ;
struct TYPE_9__ {TYPE_1__* sie_page2; struct kvm_s390_gisa_interrupt gisa_int; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_13__ {int aiv; } ;
struct TYPE_11__ {scalar_t__ next_alert; } ;
struct TYPE_8__ {TYPE_4__ gisa; } ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL ;
 int VM_EVENT (struct kvm*,int,char*,TYPE_4__*) ;
 TYPE_6__ css_general_characteristics ;
 int gisa_vcpu_kicker ;
 int hrtimer_init (TYPE_5__*,int ,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int spin_lock_init (int *) ;

void kvm_s390_gisa_init(struct kvm *kvm)
{
 struct kvm_s390_gisa_interrupt *gi = &kvm->arch.gisa_int;

 if (!css_general_characteristics.aiv)
  return;
 gi->origin = &kvm->arch.sie_page2->gisa;
 gi->alert.mask = 0;
 spin_lock_init(&gi->alert.ref_lock);
 gi->expires = 50 * 1000;
 hrtimer_init(&gi->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 gi->timer.function = gisa_vcpu_kicker;
 memset(gi->origin, 0, sizeof(struct kvm_s390_gisa));
 gi->origin->next_alert = (u32)(u64)gi->origin;
 VM_EVENT(kvm, 3, "gisa 0x%pK initialized", gi->origin);
}
