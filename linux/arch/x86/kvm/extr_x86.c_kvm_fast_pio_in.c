
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int linear_rip; } ;
struct TYPE_4__ {int complete_userspace_io; TYPE_1__ pio; int emulate_ctxt; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int complete_fast_pio_in ;
 int emulator_pio_in_emulated (int *,int,unsigned short,unsigned long*,int) ;
 int kvm_get_linear_rip (struct kvm_vcpu*) ;
 unsigned long kvm_rax_read (struct kvm_vcpu*) ;
 int kvm_rax_write (struct kvm_vcpu*,unsigned long) ;

__attribute__((used)) static int kvm_fast_pio_in(struct kvm_vcpu *vcpu, int size,
      unsigned short port)
{
 unsigned long val;
 int ret;


 val = (size < 4) ? kvm_rax_read(vcpu) : 0;

 ret = emulator_pio_in_emulated(&vcpu->arch.emulate_ctxt, size, port,
           &val, 1);
 if (ret) {
  kvm_rax_write(vcpu, val);
  return ret;
 }

 vcpu->arch.pio.linear_rip = kvm_get_linear_rip(vcpu);
 vcpu->arch.complete_userspace_io = complete_fast_pio_in;

 return 0;
}
