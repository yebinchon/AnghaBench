
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_irqfd {int flags; } ;
struct kvm {int dummy; } ;


 int KVM_IRQFD_FLAG_RESAMPLE ;
 int irqchip_in_kernel (struct kvm*) ;
 int irqchip_kernel (struct kvm*) ;

bool kvm_arch_irqfd_allowed(struct kvm *kvm, struct kvm_irqfd *args)
{
 bool resample = args->flags & KVM_IRQFD_FLAG_RESAMPLE;

 return resample ? irqchip_kernel(kvm) : irqchip_in_kernel(kvm);
}
