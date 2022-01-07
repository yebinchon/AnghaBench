
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int size; int port; int linear_rip; } ;
struct TYPE_4__ {TYPE_1__ pio; int emulate_ctxt; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int BUG_ON (int) ;
 int emulator_pio_in_emulated (int *,int,int ,unsigned long*,int) ;
 int kvm_is_linear_rip (struct kvm_vcpu*,int ) ;
 unsigned long kvm_rax_read (struct kvm_vcpu*) ;
 int kvm_rax_write (struct kvm_vcpu*,unsigned long) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int complete_fast_pio_in(struct kvm_vcpu *vcpu)
{
 unsigned long val;


 BUG_ON(vcpu->arch.pio.count != 1);

 if (unlikely(!kvm_is_linear_rip(vcpu, vcpu->arch.pio.linear_rip))) {
  vcpu->arch.pio.count = 0;
  return 1;
 }


 val = (vcpu->arch.pio.size < 4) ? kvm_rax_read(vcpu) : 0;





 emulator_pio_in_emulated(&vcpu->arch.emulate_ctxt, vcpu->arch.pio.size,
     vcpu->arch.pio.port, &val, 1);
 kvm_rax_write(vcpu, val);

 return kvm_skip_emulated_instruction(vcpu);
}
