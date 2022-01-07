
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * xive; int * xics; int * mpic; } ;
struct kvm {TYPE_1__ arch; } ;


 int smp_rmb () ;

__attribute__((used)) static inline int irqchip_in_kernel(struct kvm *kvm)
{
 int ret = 0;
 smp_rmb();
 return ret;
}
