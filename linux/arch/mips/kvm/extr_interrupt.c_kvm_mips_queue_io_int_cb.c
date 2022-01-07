
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cop0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mips_interrupt {scalar_t__ irq; } ;


 int C_IRQ0 ;
 int C_IRQ1 ;
 int C_IRQ2 ;
 int MIPS_EXC_INT_IO ;
 int MIPS_EXC_INT_IPI_1 ;
 int MIPS_EXC_INT_IPI_2 ;
 int kvm_mips_queue_irq (struct kvm_vcpu*,int ) ;
 int kvm_set_c0_guest_cause (int ,int ) ;

void kvm_mips_queue_io_int_cb(struct kvm_vcpu *vcpu,
         struct kvm_mips_interrupt *irq)
{
 int intr = (int)irq->irq;






 switch (intr) {
 case 2:
  kvm_set_c0_guest_cause(vcpu->arch.cop0, (C_IRQ0));

  kvm_mips_queue_irq(vcpu, MIPS_EXC_INT_IO);
  break;

 case 3:
  kvm_set_c0_guest_cause(vcpu->arch.cop0, (C_IRQ1));
  kvm_mips_queue_irq(vcpu, MIPS_EXC_INT_IPI_1);
  break;

 case 4:
  kvm_set_c0_guest_cause(vcpu->arch.cop0, (C_IRQ2));
  kvm_mips_queue_irq(vcpu, MIPS_EXC_INT_IPI_2);
  break;

 default:
  break;
 }

}
