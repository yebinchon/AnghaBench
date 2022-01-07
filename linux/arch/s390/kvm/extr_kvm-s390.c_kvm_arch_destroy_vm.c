
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gmap; scalar_t__ sie_page2; int dbf; } ;
struct kvm {TYPE_1__ arch; } ;


 int KVM_EVENT (int,char*,struct kvm*) ;
 int debug_unregister (int ) ;
 int free_page (unsigned long) ;
 int gmap_remove (int ) ;
 int kvm_free_vcpus (struct kvm*) ;
 int kvm_is_ucontrol (struct kvm*) ;
 int kvm_s390_clear_float_irqs (struct kvm*) ;
 int kvm_s390_destroy_adapters (struct kvm*) ;
 int kvm_s390_gisa_destroy (struct kvm*) ;
 int kvm_s390_vsie_destroy (struct kvm*) ;
 int sca_dispose (struct kvm*) ;

void kvm_arch_destroy_vm(struct kvm *kvm)
{
 kvm_free_vcpus(kvm);
 sca_dispose(kvm);
 debug_unregister(kvm->arch.dbf);
 kvm_s390_gisa_destroy(kvm);
 free_page((unsigned long)kvm->arch.sie_page2);
 if (!kvm_is_ucontrol(kvm))
  gmap_remove(kvm->arch.gmap);
 kvm_s390_destroy_adapters(kvm);
 kvm_s390_clear_float_irqs(kvm);
 kvm_s390_vsie_destroy(kvm);
 KVM_EVENT(3, "vm 0x%pK destroyed", kvm);
}
