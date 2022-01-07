
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irqchip_mode; } ;
struct kvm {TYPE_1__ arch; } ;


 int KVM_IRQCHIP_SPLIT ;
 int smp_rmb () ;

__attribute__((used)) static inline int irqchip_split(struct kvm *kvm)
{
 int mode = kvm->arch.irqchip_mode;


 smp_rmb();
 return mode == KVM_IRQCHIP_SPLIT;
}
