
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int function; } ;
struct TYPE_4__ {TYPE_3__ comparecount_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_5__ {int (* vcpu_init ) (struct kvm_vcpu*) ;} ;


 int CLOCK_MONOTONIC ;
 int HRTIMER_MODE_REL ;
 int hrtimer_init (TYPE_3__*,int ,int ) ;
 TYPE_2__* kvm_mips_callbacks ;
 int kvm_mips_comparecount_wakeup ;
 int stub1 (struct kvm_vcpu*) ;

int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
{
 int err;

 err = kvm_mips_callbacks->vcpu_init(vcpu);
 if (err)
  return err;

 hrtimer_init(&vcpu->arch.comparecount_timer, CLOCK_MONOTONIC,
       HRTIMER_MODE_REL);
 vcpu->arch.comparecount_timer.function = kvm_mips_comparecount_wakeup;
 return 0;
}
