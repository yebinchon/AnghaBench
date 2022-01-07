
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int linear_rip; } ;
struct TYPE_4__ {int complete_userspace_io; TYPE_1__ pio; int emulate_ctxt; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;


 int KVM_X86_QUIRK_OUT_7E_INC_RIP ;
 int complete_fast_pio_out ;
 int complete_fast_pio_out_port_0x7e ;
 int emulator_pio_out_emulated (int *,int,unsigned short,unsigned long*,int) ;
 scalar_t__ kvm_check_has_quirk (int ,int ) ;
 int kvm_get_linear_rip (struct kvm_vcpu*) ;
 unsigned long kvm_rax_read (struct kvm_vcpu*) ;
 int kvm_skip_emulated_instruction (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_fast_pio_out(struct kvm_vcpu *vcpu, int size,
       unsigned short port)
{
 unsigned long val = kvm_rax_read(vcpu);
 int ret = emulator_pio_out_emulated(&vcpu->arch.emulate_ctxt,
         size, port, &val, 1);
 if (ret)
  return ret;





 if (port == 0x7e &&
     kvm_check_has_quirk(vcpu->kvm, KVM_X86_QUIRK_OUT_7E_INC_RIP)) {
  vcpu->arch.complete_userspace_io =
   complete_fast_pio_out_port_0x7e;
  kvm_skip_emulated_instruction(vcpu);
 } else {
  vcpu->arch.pio.linear_rip = kvm_get_linear_rip(vcpu);
  vcpu->arch.complete_userspace_io = complete_fast_pio_out;
 }
 return 0;
}
