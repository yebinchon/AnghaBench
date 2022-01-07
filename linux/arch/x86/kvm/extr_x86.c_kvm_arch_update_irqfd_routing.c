
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct kvm {int dummy; } ;
struct TYPE_2__ {int (* update_pi_irte ) (struct kvm*,unsigned int,int ,int) ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm*,unsigned int,int ,int) ;

int kvm_arch_update_irqfd_routing(struct kvm *kvm, unsigned int host_irq,
       uint32_t guest_irq, bool set)
{
 return kvm_x86_ops->update_pi_irte(kvm, host_irq, guest_irq, set);
}
