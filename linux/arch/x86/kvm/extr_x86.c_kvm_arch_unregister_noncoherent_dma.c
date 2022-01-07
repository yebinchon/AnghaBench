
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int noncoherent_dma_count; } ;
struct kvm {TYPE_1__ arch; } ;


 int atomic_dec (int *) ;

void kvm_arch_unregister_noncoherent_dma(struct kvm *kvm)
{
 atomic_dec(&kvm->arch.noncoherent_dma_count);
}
