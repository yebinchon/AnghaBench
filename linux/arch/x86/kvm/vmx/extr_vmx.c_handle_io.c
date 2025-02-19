
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_exits; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;


 int EXIT_QUALIFICATION ;
 int kvm_emulate_instruction (struct kvm_vcpu*,int ) ;
 int kvm_fast_pio (struct kvm_vcpu*,int,unsigned int,int) ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static int handle_io(struct kvm_vcpu *vcpu)
{
 unsigned long exit_qualification;
 int size, in, string;
 unsigned port;

 exit_qualification = vmcs_readl(EXIT_QUALIFICATION);
 string = (exit_qualification & 16) != 0;

 ++vcpu->stat.io_exits;

 if (string)
  return kvm_emulate_instruction(vcpu, 0);

 port = exit_qualification >> 16;
 size = (exit_qualification & 7) + 1;
 in = (exit_qualification & 8) != 0;

 return kvm_fast_pio(vcpu, size, port, in);
}
