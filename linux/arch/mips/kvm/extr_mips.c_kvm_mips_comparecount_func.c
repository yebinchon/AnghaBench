
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wait; } ;
struct kvm_vcpu {int wq; TYPE_1__ arch; } ;
struct TYPE_4__ {int (* queue_timer_int ) (struct kvm_vcpu*) ;} ;


 TYPE_2__* kvm_mips_callbacks ;
 int stub1 (struct kvm_vcpu*) ;
 int swake_up_one (int *) ;
 scalar_t__ swq_has_sleeper (int *) ;

__attribute__((used)) static void kvm_mips_comparecount_func(unsigned long data)
{
 struct kvm_vcpu *vcpu = (struct kvm_vcpu *)data;

 kvm_mips_callbacks->queue_timer_int(vcpu);

 vcpu->arch.wait = 0;
 if (swq_has_sleeper(&vcpu->wq))
  swake_up_one(&vcpu->wq);
}
