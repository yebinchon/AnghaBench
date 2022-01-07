
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int avic_vm_destroy (struct kvm*) ;
 int sev_vm_destroy (struct kvm*) ;

__attribute__((used)) static void svm_vm_destroy(struct kvm *kvm)
{
 avic_vm_destroy(kvm);
 sev_vm_destroy(kvm);
}
