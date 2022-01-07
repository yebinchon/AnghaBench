
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_fast_pio_in (struct kvm_vcpu*,int,unsigned short) ;
 int kvm_fast_pio_out (struct kvm_vcpu*,int,unsigned short) ;
 scalar_t__ kvm_skip_emulated_instruction (struct kvm_vcpu*) ;

int kvm_fast_pio(struct kvm_vcpu *vcpu, int size, unsigned short port, int in)
{
 int ret;

 if (in)
  ret = kvm_fast_pio_in(vcpu, size, port);
 else
  ret = kvm_fast_pio_out(vcpu, size, port);
 return ret && kvm_skip_emulated_instruction(vcpu);
}
