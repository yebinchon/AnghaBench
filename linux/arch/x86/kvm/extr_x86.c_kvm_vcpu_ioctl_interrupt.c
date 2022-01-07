
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pending_external_vector; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;
struct kvm_interrupt {int irq; } ;


 int EEXIST ;
 int EINVAL ;
 int ENXIO ;
 int KVM_NR_INTERRUPTS ;
 int KVM_REQ_EVENT ;
 int irqchip_in_kernel (int ) ;
 int kvm_make_request (int ,struct kvm_vcpu*) ;
 int kvm_queue_interrupt (struct kvm_vcpu*,int,int) ;
 scalar_t__ pic_in_kernel (int ) ;

__attribute__((used)) static int kvm_vcpu_ioctl_interrupt(struct kvm_vcpu *vcpu,
        struct kvm_interrupt *irq)
{
 if (irq->irq >= KVM_NR_INTERRUPTS)
  return -EINVAL;

 if (!irqchip_in_kernel(vcpu->kvm)) {
  kvm_queue_interrupt(vcpu, irq->irq, 0);
  kvm_make_request(KVM_REQ_EVENT, vcpu);
  return 0;
 }





 if (pic_in_kernel(vcpu->kvm))
  return -ENXIO;

 if (vcpu->arch.pending_external_vector != -1)
  return -EEXIST;

 vcpu->arch.pending_external_vector = irq->irq;
 kvm_make_request(KVM_REQ_EVENT, vcpu);
 return 0;
}
