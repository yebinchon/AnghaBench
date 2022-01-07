
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; int size; int port; scalar_t__ in; } ;
struct TYPE_4__ {TYPE_1__ pio; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int KVM_PIO_BUS ;
 int kvm_io_bus_read (struct kvm_vcpu*,int ,int ,int ,void*) ;
 int kvm_io_bus_write (struct kvm_vcpu*,int ,int ,int ,void*) ;

__attribute__((used)) static int kernel_pio(struct kvm_vcpu *vcpu, void *pd)
{
 int r = 0, i;

 for (i = 0; i < vcpu->arch.pio.count; i++) {
  if (vcpu->arch.pio.in)
   r = kvm_io_bus_read(vcpu, KVM_PIO_BUS, vcpu->arch.pio.port,
         vcpu->arch.pio.size, pd);
  else
   r = kvm_io_bus_write(vcpu, KVM_PIO_BUS,
          vcpu->arch.pio.port, vcpu->arch.pio.size,
          pd);
  if (r)
   break;
  pd += vcpu->arch.pio.size;
 }
 return r;
}
