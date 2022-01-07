
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned short port; int in; unsigned int count; int size; } ;
struct TYPE_6__ {TYPE_1__ pio; int pio_data; } ;
struct kvm_vcpu {TYPE_4__* run; TYPE_2__ arch; } ;
struct TYPE_7__ {int size; int data_offset; unsigned int count; unsigned short port; int direction; } ;
struct TYPE_8__ {TYPE_3__ io; int exit_reason; } ;


 int KVM_EXIT_IO ;
 int KVM_EXIT_IO_IN ;
 int KVM_EXIT_IO_OUT ;
 int KVM_PIO_PAGE_OFFSET ;
 int PAGE_SIZE ;
 int kernel_pio (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int emulator_pio_in_out(struct kvm_vcpu *vcpu, int size,
          unsigned short port, void *val,
          unsigned int count, bool in)
{
 vcpu->arch.pio.port = port;
 vcpu->arch.pio.in = in;
 vcpu->arch.pio.count = count;
 vcpu->arch.pio.size = size;

 if (!kernel_pio(vcpu, vcpu->arch.pio_data)) {
  vcpu->arch.pio.count = 0;
  return 1;
 }

 vcpu->run->exit_reason = KVM_EXIT_IO;
 vcpu->run->io.direction = in ? KVM_EXIT_IO_IN : KVM_EXIT_IO_OUT;
 vcpu->run->io.size = size;
 vcpu->run->io.data_offset = KVM_PIO_PAGE_OFFSET * PAGE_SIZE;
 vcpu->run->io.count = count;
 vcpu->run->io.port = port;

 return 0;
}
