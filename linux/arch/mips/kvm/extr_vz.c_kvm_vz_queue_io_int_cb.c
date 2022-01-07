
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mips_interrupt {scalar_t__ irq; } ;


 int MIPS_EXC_INT_IO ;
 int MIPS_EXC_INT_IPI_1 ;
 int MIPS_EXC_INT_IPI_2 ;
 int kvm_vz_queue_irq (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void kvm_vz_queue_io_int_cb(struct kvm_vcpu *vcpu,
       struct kvm_mips_interrupt *irq)
{
 int intr = (int)irq->irq;





 switch (intr) {
 case 2:
  kvm_vz_queue_irq(vcpu, MIPS_EXC_INT_IO);
  break;

 case 3:
  kvm_vz_queue_irq(vcpu, MIPS_EXC_INT_IPI_1);
  break;

 case 4:
  kvm_vz_queue_irq(vcpu, MIPS_EXC_INT_IPI_2);
  break;

 default:
  break;
 }

}
