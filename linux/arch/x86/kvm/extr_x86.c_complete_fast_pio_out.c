
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int linear_rip; scalar_t__ count; } ;
struct TYPE_4__ {TYPE_1__ pio; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int kvm_is_linear_rip (struct kvm_vcpu*,int ) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int complete_fast_pio_out(struct kvm_vcpu *vcpu)
{
 vcpu->arch.pio.count = 0;

 if (unlikely(!kvm_is_linear_rip(vcpu, vcpu->arch.pio.linear_rip)))
  return 1;

 return kvm_skip_emulated_instruction(vcpu);
}
