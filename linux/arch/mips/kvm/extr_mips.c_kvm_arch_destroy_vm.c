
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int kvm_mips_free_gpa_pt (struct kvm*) ;
 int kvm_mips_free_vcpus (struct kvm*) ;

void kvm_arch_destroy_vm(struct kvm *kvm)
{
 kvm_mips_free_vcpus(kvm);
 kvm_mips_free_gpa_pt(kvm);
}
