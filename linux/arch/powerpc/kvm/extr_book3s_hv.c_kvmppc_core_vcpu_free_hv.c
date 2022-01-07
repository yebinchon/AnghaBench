
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vpa_update_lock; int vpa; int slb_shadow; int dtl; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;


 int kmem_cache_free (int ,struct kvm_vcpu*) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unpin_vpa (int ,int *) ;

__attribute__((used)) static void kvmppc_core_vcpu_free_hv(struct kvm_vcpu *vcpu)
{
 spin_lock(&vcpu->arch.vpa_update_lock);
 unpin_vpa(vcpu->kvm, &vcpu->arch.dtl);
 unpin_vpa(vcpu->kvm, &vcpu->arch.slb_shadow);
 unpin_vpa(vcpu->kvm, &vcpu->arch.vpa);
 spin_unlock(&vcpu->arch.vpa_update_lock);
 kvm_vcpu_uninit(vcpu);
 kmem_cache_free(kvm_vcpu_cache, vcpu);
}
