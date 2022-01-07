
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sie_block; int gmap; } ;
struct kvm_vcpu {TYPE_1__ arch; TYPE_3__* kvm; int vcpu_id; } ;
struct TYPE_5__ {scalar_t__ use_cmma; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;


 int VCPU_EVENT (struct kvm_vcpu*,int,char*,char*) ;
 int free_page (unsigned long) ;
 int gmap_remove (int ) ;
 int kmem_cache_free (int ,struct kvm_vcpu*) ;
 int kvm_clear_async_pf_completion_queue (struct kvm_vcpu*) ;
 scalar_t__ kvm_is_ucontrol (TYPE_3__*) ;
 int kvm_s390_clear_local_irqs (struct kvm_vcpu*) ;
 int kvm_s390_vcpu_unsetup_cmma (struct kvm_vcpu*) ;
 int kvm_vcpu_cache ;
 int kvm_vcpu_uninit (struct kvm_vcpu*) ;
 int sca_del_vcpu (struct kvm_vcpu*) ;
 int trace_kvm_s390_destroy_vcpu (int ) ;

void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
{
 VCPU_EVENT(vcpu, 3, "%s", "free cpu");
 trace_kvm_s390_destroy_vcpu(vcpu->vcpu_id);
 kvm_s390_clear_local_irqs(vcpu);
 kvm_clear_async_pf_completion_queue(vcpu);
 if (!kvm_is_ucontrol(vcpu->kvm))
  sca_del_vcpu(vcpu);

 if (kvm_is_ucontrol(vcpu->kvm))
  gmap_remove(vcpu->arch.gmap);

 if (vcpu->kvm->arch.use_cmma)
  kvm_s390_vcpu_unsetup_cmma(vcpu);
 free_page((unsigned long)(vcpu->arch.sie_block));

 kvm_vcpu_uninit(vcpu);
 kmem_cache_free(kvm_vcpu_cache, vcpu);
}
