
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ xive; scalar_t__ xics; scalar_t__ mpic; } ;
struct kvm {TYPE_1__ arch; } ;



bool kvm_arch_intc_initialized(struct kvm *kvm)
{
 return 0;
}
