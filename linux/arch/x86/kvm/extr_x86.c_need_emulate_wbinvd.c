
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;


 int kvm_arch_has_noncoherent_dma (int ) ;

__attribute__((used)) static bool need_emulate_wbinvd(struct kvm_vcpu *vcpu)
{
 return kvm_arch_has_noncoherent_dma(vcpu->kvm);
}
